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
    required UserResponse content,
    @JsonKey(name: 'expires_in') int? expiresIn,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
