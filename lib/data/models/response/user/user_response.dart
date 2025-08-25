import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
sealed class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    String? avatar,
    @JsonKey(name: "nick_name") String? nickName,
    String? banner,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    String? gender,
    String? intro,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
