import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed
sealed class PostResponse with _$PostResponse {
  const factory PostResponse({
    required List<String> message,
    required List<PostContent> content,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}

@freezed
sealed class PostContent with _$PostContent {
  const factory PostContent({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String contents,
    required List<String> images,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PostContent;

  factory PostContent.fromJson(Map<String, dynamic> json) =>
      _$PostContentFromJson(json);
}
