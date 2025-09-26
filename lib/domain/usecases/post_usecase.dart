import 'package:dio/dio.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/posts/comment_request.dart';
import 'package:social/data/models/request/posts/create_post_request.dart';
import 'package:social/data/models/response/posts/comment_response.dart';
import 'package:social/data/models/response/posts/create_post_response.dart';
import 'package:social/data/models/response/posts/like_post_response.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/domain/repo/post_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> execute(Input input);
}

abstract class NoParamFutureUsecase<Output> {
  Future<Output> getPosts();
}

class CreatePostUsecase
    extends FutureUsecase<CreatePostRequest, CreatePostResponse> {
  @override
  Future<CreatePostResponse> execute(CreatePostRequest input) async {
    final imageFiles = input.images != null
        ? await Future.wait(
            input.images!.map((path) async => MultipartFile.fromFile(path)),
          )
        : <MultipartFile>[];

    return injector.get<PostRepository>().createPost(
      input.contents,
      imageFiles,
    );
  }
}

class GetPostsUsecase extends NoParamFutureUsecase<PostResponse> {
  @override
  Future<PostResponse> getPosts() {
    return injector.get<PostRepository>().getPosts();
  }
}

class LikePostUsecase extends FutureUsecase<int, LikePostResponse> {
  @override
  Future<LikePostResponse> execute(int postId) {
    return injector.get<PostRepository>().likePost(postId);
  }
}

class CommentPostUsecase
    extends FutureUsecase<CommentRequest, CommentResponse> {
  @override
  Future<CommentResponse> execute(CommentRequest input) {
    return injector.get<PostRepository>().commentPost(
      input.postId,
      input.content,
    );
  }
}
