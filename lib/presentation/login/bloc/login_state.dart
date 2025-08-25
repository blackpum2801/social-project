import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.submissionInProgress) LoginStatus status,
    AuthResponse? response,
    String? errorMessage,
  }) = _LoginState;
  factory LoginState.initial() => const LoginState(
    status: LoginStatus.initial,
    response: null,
    errorMessage: null,
  );
}
