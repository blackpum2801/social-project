import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.freezed.dart';
part 'comment_response.g.dart';

@freezed
sealed class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    required String name,
    required String content,
    @JsonKey(name: 'user_avatar') String? userAvatar,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}
