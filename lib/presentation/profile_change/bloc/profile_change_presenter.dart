import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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

  void updateName(String name) {
    final user = state.response?.content;
    if (user == null) return;
    emit(
      state.copyWith(
        response: state.response!.copyWith(content: user.copyWith(name: name)),
      ),
    );
  }

  void updatePhone(String phone) {
    final user = state.response?.content;
    if (user == null) return;
    emit(
      state.copyWith(
        response: state.response!.copyWith(
          content: user.copyWith(phoneNumber: phone),
        ),
      ),
    );
  }

  void updateNickName(String nickName) {
    final user = state.response?.content;
    if (user == null) return;
    emit(
      state.copyWith(
        response: state.response!.copyWith(
          content: user.copyWith(nickName: nickName),
        ),
      ),
    );
  }

  void updateIntro(String intro) {
    final user = state.response?.content;
    if (user == null) return;

    final cleanIntro = intro
        .replaceAll(RegExp(r'[^\w\s\u00C0-\u017F.,!?()-]'), '')
        .trim();

    emit(
      state.copyWith(
        response: state.response!.copyWith(
          content: user.copyWith(intro: cleanIntro),
        ),
      ),
    );
  }

  void updateGender(String gender) {
    final user = state.response?.content;
    if (user == null) return;
    emit(
      state.copyWith(
        response: state.response!.copyWith(
          content: user.copyWith(gender: gender),
        ),
      ),
    );
  }

  void updateDateOfBirth(DateTime dob) {
    final user = state.response?.content;
    if (user == null) return;
    emit(
      state.copyWith(
        response: state.response!.copyWith(
          content: user.copyWith(
            dateOfBirth: DateFormat("yyyy-MM-dd").format(dob),
          ),
        ),
      ),
    );
  }

  DateTime? parseDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return null;
    try {
      if (dateString.contains('-')) {
        return DateFormat('yyyy-MM-dd').parse(dateString);
      } else if (dateString.contains('/')) {
        return DateFormat('dd/MM/yyyy').parse(dateString);
      } else {
        return DateTime.tryParse(dateString);
      }
    } catch (_) {
      return null;
    }
  }

  Future<void> saveProfile() async {
    final content = state.response?.content;
    if (content == null) return;

    final data = {
      "name": content.name,
      "phone_number": content.phoneNumber,
      "nick_name": content.nickName,
      "gender": content.gender,
      "intro": content.intro,
    };

    if (content.dateOfBirth != null && content.dateOfBirth!.isNotEmpty) {
      final dob = parseDate(content.dateOfBirth);
      if (dob != null) {
        data["date_of_birth"] = DateFormat("yyyy-MM-dd").format(dob);
      }
    }

    await _updateMe(data);
  }

  Future<void> _updateMe(Map<String, dynamic> body) async {
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
