import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
sealed class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    String? email,
    required String password,
    @JsonKey(name: "password_confirmation")
    required String passwordConfirmation,
    @JsonKey(name: "old_password") String? oldPassword,
    String? name,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
