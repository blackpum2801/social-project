import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/user/user_response.dart';
part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
sealed class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    required bool status,
    required AuthContent content,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
sealed class AuthContent with _$AuthContent {
  const factory AuthContent({
    required String token,
    required UserResponse user,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _AuthContent;

  factory AuthContent.fromJson(Map<String, dynamic> json) =>
      _$AuthContentFromJson(json);
}
