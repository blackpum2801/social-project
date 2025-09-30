import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/data/models/request/posts/comment_request.dart';
import 'package:social/data/models/request/posts/create_post_request.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/domain/usecases/post_usecase.dart';
import 'package:social/presentation/post/bloc/post_state.dart';

class PostPresenter extends Cubit<PostState> {
  final CreatePostUsecase _createPostUsecase;
  final GetPostsUsecase _getPostsUsecase;
  final LikePostUsecase _likePostUsecase;
  final CommentPostUsecase _commentPostUsecase;

  final ImagePicker _picker = ImagePicker();

  PostPresenter(
    this._createPostUsecase,
    this._getPostsUsecase,
    this._likePostUsecase,
    this._commentPostUsecase,
  ) : super(PostState.initial());

  Future<void> pickImages() async {
    try {
      final pickedFiles = await _picker.pickMultiImage(
        maxWidth: 1200,
        maxHeight: 1200,
        imageQuality: 70,
      );
      if (pickedFiles.isEmpty) return;
      final images = pickedFiles.map((x) => File(x.path)).toList();
      emit(state.copyWith(selectedImages: images, status: PostStatus.initial));
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(state.copyWith(errorMessage: apiError.message));
    }
  }

  Future<void> getPosts() async {
    emit(state.copyWith(status: PostStatus.submissionInProgress));
    try {
      final res = await _getPostsUsecase.getPosts();
      emit(
        state.copyWith(
          status: PostStatus.submissionSuccess,
          postsResponse: res,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: PostStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }

  Future<void> createPost(String contents) async {
    emit(state.copyWith(status: PostStatus.submissionInProgress));
    try {
      final req = CreatePostRequest(
        contents: contents,
        images: state.selectedImages.map((f) => f.path).toList(),
      );

      final res = await _createPostUsecase.execute(req);
      final posts = await _getPostsUsecase.getPosts();

      emit(
        state.copyWith(
          status: PostStatus.submissionSuccess,
          response: res,
          postsResponse: posts,
          selectedImages: [],
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: PostStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }

  Future<void> likePost(int postId) async {
    final currentPosts = List<PostContent>.from(
      state.postsResponse?.content ?? [],
    );

    final index = currentPosts.indexWhere((p) => p.id == postId);
    if (index == -1) return;

    final post = currentPosts[index];
    final isLikedBefore = post.isLiked == 1;

    final updatedPost = post.copyWith(
      isLiked: isLikedBefore ? 0 : 1,
      totalLiked: isLikedBefore ? post.totalLiked - 1 : post.totalLiked + 1,
    );
    currentPosts[index] = updatedPost;

    emit(
      state.copyWith(
        postsResponse: state.postsResponse?.copyWith(content: currentPosts),
      ),
    );
    try {
      await _likePostUsecase.execute(postId);
    } catch (e) {
      currentPosts[index] = post;
      emit(
        state.copyWith(
          postsResponse: state.postsResponse?.copyWith(content: currentPosts),
          errorMessage: ApiErrorHandler.handle(e).message,
        ),
      );
    }
  }

  Future<void> commentPost(int postId, String content) async {
    final currentPosts = List<PostContent>.from(
      state.postsResponse?.content ?? [],
    );

    final index = currentPosts.indexWhere((p) => p.id == postId);
    if (index == -1) return;

    final post = currentPosts[index];
    final tempComment = PostComment(
      name: post.userName ?? "Ẩn danh",
      content: content,
      userAvatar: post.userAvatar,
    );

    final updatedComments = List<PostComment>.from(post.comments)
      ..add(tempComment);

    final updatedPost = post.copyWith(
      comments: updatedComments,
      totalComment: post.totalComment + 1,
    );

    currentPosts[index] = updatedPost;

    emit(
      state.copyWith(
        postsResponse: state.postsResponse?.copyWith(content: currentPosts),
      ),
    );

    try {
      final res = await _commentPostUsecase.execute(
        CommentRequest(postId: postId, content: content),
      );
      final serverComment = PostComment(
        name: res.name,
        content: res.content,
        userAvatar: res.userAvatar,
      );

      final syncedComments = List<PostComment>.from(post.comments)
        ..add(serverComment);

      currentPosts[index] = post.copyWith(
        comments: syncedComments,
        totalComment: post.totalComment + 1,
      );

      emit(
        state.copyWith(
          postsResponse: state.postsResponse?.copyWith(content: currentPosts),
        ),
      );
    } catch (e) {
      currentPosts[index] = post;
      emit(
        state.copyWith(
          postsResponse: state.postsResponse?.copyWith(content: currentPosts),
          errorMessage: ApiErrorHandler.handle(e).message,
        ),
      );
    }
  }
}
