import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_response.freezed.dart';
part 'refresh_response.g.dart';

@freezed
sealed class RefreshResponse with _$RefreshResponse {
  const factory RefreshResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    bool? status,
    required RefreshContent content,
  }) = _RefreshResponse;

  factory RefreshResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseFromJson(json);
}

@freezed
sealed class RefreshContent with _$RefreshContent {
  const factory RefreshContent({
    required String token,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _RefreshContent;

  factory RefreshContent.fromJson(Map<String, dynamic> json) =>
      _$RefreshContentFromJson(json);
}
