import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_response.freezed.dart';
part 'create_post_response.g.dart';

@freezed
sealed class CreatePostResponse with _$CreatePostResponse {
  const factory CreatePostResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    required bool status,
  }) = _CreatePostResponse;

  factory CreatePostResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePostResponseFromJson(json);
}
