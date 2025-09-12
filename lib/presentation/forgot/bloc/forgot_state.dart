import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/forgot/forgot_response.dart';
part 'forgot_state.freezed.dart';

enum ForgotStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class ForgotState with _$ForgotState {
  const factory ForgotState({
    @Default(ForgotStatus.initial) ForgotStatus status,
    ForgotResponse? response,
    String? errorMessage,
  }) = _ForgotState;
  factory ForgotState.initial() => const ForgotState(
    status: ForgotStatus.initial,
    response: null,
    errorMessage: null,
  );
}
