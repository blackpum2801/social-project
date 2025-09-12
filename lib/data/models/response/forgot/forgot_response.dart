import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_response.freezed.dart';
part 'forgot_response.g.dart';

@freezed
sealed class ForgotResponse with _$ForgotResponse {
  const factory ForgotResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    bool? status,
    Map<String, dynamic>? content,
  }) = _ForgotResponse;

  factory ForgotResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotResponseFromJson(json);
}
