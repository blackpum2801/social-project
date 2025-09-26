import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_post_response.freezed.dart';
part 'like_post_response.g.dart';

@freezed
sealed class LikePostResponse with _$LikePostResponse {
  const factory LikePostResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    required bool status,
  }) = _LikePostResponse;

  factory LikePostResponse.fromJson(Map<String, dynamic> json) =>
      _$LikePostResponseFromJson(json);
}
