import 'package:social/data/models/response/auth/auth_response.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_change_password_state.freezed.dart';

enum ProfileChangePasswordStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class ProfileChangePasswordState with _$ProfileChangePasswordState {
  const factory ProfileChangePasswordState({
    @Default(ProfileChangePasswordStatus.initial)
    ProfileChangePasswordStatus status,
    AuthResponse? response,
    String? errorMessage,
  }) = _ProfileChangePasswordState;
  factory ProfileChangePasswordState.initial() =>
      const ProfileChangePasswordState(
        status: ProfileChangePasswordStatus.initial,
        response: null,
        errorMessage: null,
      );
}
