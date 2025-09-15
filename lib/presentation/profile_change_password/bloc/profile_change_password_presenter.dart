import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/domain/usecases/profile_change_password_usecase.dart';
import 'package:social/presentation/profile_change_password/bloc/profile_change_password_state.dart';

class ProfileChangePasswordPresenter extends Cubit<ProfileChangePasswordState> {
  final ProfileChangePasswordUsecase _profileChangePasswordUsecase;

  ProfileChangePasswordPresenter(this._profileChangePasswordUsecase)
    : super(ProfileChangePasswordState.initial());
  Future<void> changePassword(RegisterRequest request) async {
    if (request.password.isEmpty || request.passwordConfirmation.isEmpty) {
      emit(
        state.copyWith(
          status: ProfileChangePasswordStatus.submissionFailure,
          errorMessage: "Please fill all fields",
        ),
      );
      return;
    }
    if (request.password != request.passwordConfirmation) {
      emit(
        state.copyWith(
          status: ProfileChangePasswordStatus.submissionFailure,
          errorMessage: "Password and Confirm Password do not match",
        ),
      );
      return;
    }

    emit(
      state.copyWith(status: ProfileChangePasswordStatus.submissionInProgress),
    );
    try {
      final response = await _profileChangePasswordUsecase.callMeChangePassword(
        request,
      );
      emit(
        state.copyWith(
          status: ProfileChangePasswordStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);

      emit(
        state.copyWith(
          status: ProfileChangePasswordStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
