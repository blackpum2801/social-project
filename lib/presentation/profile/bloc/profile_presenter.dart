import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social/core/errors/api_error_handler.dart';

import 'package:social/domain/usecases/profile_usecase.dart';
import 'package:social/presentation/profile/bloc/profile_state.dart';

class ProfilePresenter extends Cubit<ProfileState> {
  final ProfileUsecase _profileUsecase;
  final ImagePicker _picker = ImagePicker();
  ProfilePresenter(this._profileUsecase) : super(ProfileState.initial());
  Future<void> getProfile() async {
    emit(state.copyWith(status: ProfileStatus.submissionInProgress));
    try {
      final response = await _profileUsecase.run();
      emit(
        state.copyWith(
          status: ProfileStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);

      emit(
        state.copyWith(
          status: ProfileStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }

  Future<void> updateAvatar() async {
    try {
      final XFile? picked = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 60,
      );
      if (picked == null) return;

      emit(state.copyWith(status: ProfileStatus.submissionInProgress));

      final response = await _profileUsecase.callUpdateAvatar(
        File(picked.path),
      );

      emit(
        state.copyWith(
          status: ProfileStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);

      emit(
        state.copyWith(
          status: ProfileStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }

  Future<void> updateBanner() async {
    try {
      final XFile? picked = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 60,
      );
      if (picked == null) return;

      emit(state.copyWith(status: ProfileStatus.submissionInProgress));

      final response = await _profileUsecase.callUpdateBanner(
        File(picked.path),
      );

      emit(
        state.copyWith(
          status: ProfileStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);

      emit(
        state.copyWith(
          status: ProfileStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
