import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
part 'profile_state.freezed.dart';

enum ProfileStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    ProfileResponse? response,
    String? errorMessage,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(
    status: ProfileStatus.initial,
    response: null,
    errorMessage: null,
  );
}
