import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_request.freezed.dart';
part 'comment_request.g.dart';

@freezed
sealed class CommentRequest with _$CommentRequest {
  const factory CommentRequest({
    @JsonKey(name: 'post_id') required int postId,
    required String content,
  }) = _CommentRequest;

  factory CommentRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentRequestFromJson(json);
}
