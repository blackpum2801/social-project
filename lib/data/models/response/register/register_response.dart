import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
sealed class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    required bool status,
    required RegisterContent content,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
sealed class RegisterContent with _$RegisterContent {
  const factory RegisterContent({
    required String token,
    required User user,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _RegisterContent;

  factory RegisterContent.fromJson(Map<String, dynamic> json) =>
      _$RegisterContentFromJson(json);
}

@freezed
sealed class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
    String? phone,
    @JsonKey(name: 'user_avatar') String? userAvatar,
    @JsonKey(name: 'is_online') bool? isOnline,
    @JsonKey(name: 'nick_name') String? nickName,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? gender,
    String? banner,
    String? intro,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
