import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/register/register_response.dart';

part 'register_state.freezed.dart';

enum RegisterStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterStatus.submissionInProgress) RegisterStatus status,
    RegisterResponse? response,
    String? errorMessage,
  }) = _RegisterState;
  factory RegisterState.initial() => const RegisterState(
    status: RegisterStatus.initial,
    response: null,
    errorMessage: null,
  );
}
