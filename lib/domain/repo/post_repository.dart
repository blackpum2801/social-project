import 'package:dio/dio.dart';
import 'package:social/data/models/response/posts/comment_response.dart';
import 'package:social/data/models/response/posts/create_post_response.dart';
import 'package:social/data/models/response/posts/like_post_response.dart';
import 'package:social/data/models/response/posts/post_response.dart';

abstract class PostRepository {
  Future<CreatePostResponse> createPost(
    String contents,
    List<MultipartFile>? images,
  );
  Future<PostResponse> getPosts();
  Future<LikePostResponse> likePost(int postId);
  Future<CommentResponse> commentPost(int postId, String content);
}
