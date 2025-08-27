import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:social/domain/usecases/register_usecase/profile_usecase.dart';
import 'package:social/presentation/profile/bloc/profile_state.dart';

class ProfilePresenter extends Cubit<ProfileState> {
  final ProfileUsecase _profileUsecase;

  ProfilePresenter(this._profileUsecase) : super(ProfileState.initial());
  Future<void> getProfile() async {
    emit(state.copyWith(status: ProfileStatus.submissionInProgress));
    // try {
    final response = await _profileUsecase.run();
    emit(
      state.copyWith(
        status: ProfileStatus.submissionSuccess,
        response: response,
      ),
    );
    // } catch (e) {
    //   emit(
    //     state.copyWith(
    //       status: ProfileStatus.submissionFailure,
    //       errorMessage: e.toString(),
    //     ),
    //   );
    // }
  }
}
