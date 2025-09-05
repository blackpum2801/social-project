import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
part 'profile_change_state.freezed.dart';

enum ProfileChangeStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class ProfileChangeState with _$ProfileChangeState {
  const factory ProfileChangeState({
    @Default(ProfileChangeStatus.initial) ProfileChangeStatus status,
    ProfileResponse? response,
    String? errorMessage,
  }) = _ProfileChangeState;
  factory ProfileChangeState.initial() => const ProfileChangeState(
    status: ProfileChangeStatus.initial,
    response: null,
    errorMessage: null,
  );
}
