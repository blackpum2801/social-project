import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/domain/usecases/register_usecase.dart';
import 'package:social/presentation/register/bloc/register_state.dart';

class RegisterPresenter extends Cubit<RegisterState> {
  final RegisterUsecase _registerUsecase;

  RegisterPresenter(this._registerUsecase) : super(RegisterState.initial());

  Future<void> register(RegisterRequest request) async {
    if (request.name.isEmpty ||
        request.email.isEmpty ||
        request.password.isEmpty ||
        request.passwordConfirmation.isEmpty) {
      emit(
        state.copyWith(
          status: RegisterStatus.submissionFailure,
          errorMessage: "Vui lòng nhập đầy đủ thông tin",
        ),
      );
      return;
    }

    if (request.password != request.passwordConfirmation) {
      emit(
        state.copyWith(
          status: RegisterStatus.submissionFailure,
          errorMessage: "Mật khẩu xác nhận không khớp",
        ),
      );
      return;
    }

    emit(state.copyWith(status: RegisterStatus.submissionInProgress));
    try {
      final response = await _registerUsecase.run(request);
      emit(
        state.copyWith(
          status: RegisterStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: RegisterStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
