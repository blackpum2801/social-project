import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:social/domain/usecases/register_usecase/profile_usecase.dart';
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
      emit(
        state.copyWith(
          status: ProfileStatus.submissionFailure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> updateAvatar() async {
    // try {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 60,
    );
    if (picked == null) return;

    emit(state.copyWith(status: ProfileStatus.submissionInProgress));

    // Truyền MultipartFile vào Usecase
    final response = await _profileUsecase.callUpdateAvatar(File(picked.path));

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
