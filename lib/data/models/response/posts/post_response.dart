import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed
sealed class PostResponse with _$PostResponse {
  const factory PostResponse({
    required List<String> message,
    required List<PostContent> content,
    @JsonKey(name: 'status_code') int? statusCode,
    bool? status,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}

@freezed
sealed class PostComment with _$PostComment {
  const factory PostComment({
    required String name,
    required String content,
    @JsonKey(name: 'user_avatar') String? userAvatar,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _PostComment;

  factory PostComment.fromJson(Map<String, dynamic> json) =>
      _$PostCommentFromJson(json);
}

@freezed
sealed class PostContent with _$PostContent {
  const factory PostContent({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'nick_name') String? nickName,
    @JsonKey(name: 'user_avatar') String? userAvatar,
    required String contents,
    required List<String> images,
    @JsonKey(name: 'is_liked') @Default(0) int isLiked,
    @JsonKey(name: 'total_comment') @Default(0) int totalComment,
    @JsonKey(name: 'total_liked') @Default(0) int totalLiked,
    @JsonKey(name: 'liked') @Default([]) List<String> liked,
    @JsonKey(name: 'comments') @Default([]) List<PostComment> comments,
    @JsonKey(name: 'time_create') String? timeCreate,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _PostContent;

  factory PostContent.fromJson(Map<String, dynamic> json) =>
      _$PostContentFromJson(json);
}
