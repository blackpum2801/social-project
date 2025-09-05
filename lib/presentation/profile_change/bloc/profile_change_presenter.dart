import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/domain/usecases/profile_change_usecase.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_state.dart';

class ProfileChangePresenter extends Cubit<ProfileChangeState> {
  final ProfileChangeUsecase _profileUsecase;
  ProfileChangePresenter(this._profileUsecase)
    : super(ProfileChangeState.initial());
  void syncFromProfileResponse(ProfileResponse? response) {
    if (response == null) return;
    emit(state.copyWith(response: response));
  }

  Future<void> updateMe(Map<String, dynamic> body) async {
    emit(state.copyWith(status: ProfileChangeStatus.submissionInProgress));
    try {
      final response = await _profileUsecase.callMeUpdate(body);
      emit(
        state.copyWith(
          status: ProfileChangeStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: ProfileChangeStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
