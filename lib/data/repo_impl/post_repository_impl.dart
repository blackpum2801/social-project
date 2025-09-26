import 'package:dio/dio.dart';
import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/request/posts/comment_request.dart';
import 'package:social/data/models/request/posts/like_post_request.dart';
import 'package:social/data/models/response/posts/comment_response.dart';
import 'package:social/data/models/response/posts/create_post_response.dart';
import 'package:social/data/models/response/posts/like_post_response.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/domain/repo/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  final ApiServices _apiServices;
  PostRepositoryImpl(this._apiServices);

  @override
  Future<CreatePostResponse> createPost(
    String contents,
    List<MultipartFile>? images,
  ) {
    return _apiServices.createPost(contents: contents, images: images);
  }

  @override
  Future<PostResponse> getPosts() => _apiServices.getPosts();
  @override
  Future<LikePostResponse> likePost(int postId) {
    return _apiServices.likePost(request: LikePostRequest(postId: postId));
  }

  @override
  Future<CommentResponse> commentPost(int postId, String content) {
    return _apiServices.commentPost(
      request: CommentRequest(postId: postId, content: content),
    );
  }
}
