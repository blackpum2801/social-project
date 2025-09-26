import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/posts/create_post_response.dart';
import 'package:social/data/models/response/posts/like_post_response.dart';
import 'package:social/data/models/response/posts/post_response.dart';

part 'post_state.freezed.dart';

enum PostStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class PostState with _$PostState {
  const factory PostState({
    @Default(PostStatus.initial) PostStatus status,
    CreatePostResponse? response,
    PostResponse? postsResponse,
    LikePostResponse? likeResponse,
    String? errorMessage,
    @Default([]) List<File> selectedImages,
  }) = _PostState;

  factory PostState.initial() => const PostState();
}
