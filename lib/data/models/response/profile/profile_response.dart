import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/user/user_response.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
sealed class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required List<String> message,
    @JsonKey(name: 'status_code') required int statusCode,
    required bool status,
    @JsonKey(fromJson: _contentFromJson) required UserResponse content,
    @JsonKey(name: 'expires_in') int? expiresIn,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

UserResponse _contentFromJson(dynamic json) {
  if (json == null) {
    throw Exception("content is null");
  }
  if (json is Map<String, dynamic> && json.containsKey('user')) {
    return UserResponse.fromJson(json['user'] as Map<String, dynamic>);
  }
  return UserResponse.fromJson(json as Map<String, dynamic>);
}
