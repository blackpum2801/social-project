import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_post_request.freezed.dart';
part 'like_post_request.g.dart';

@freezed
sealed class LikePostRequest with _$LikePostRequest {
  const factory LikePostRequest({
    @JsonKey(name: 'post_id') required int postId,
  }) = _LikePostRequest;

  factory LikePostRequest.fromJson(Map<String, dynamic> json) =>
      _$LikePostRequestFromJson(json);
}
