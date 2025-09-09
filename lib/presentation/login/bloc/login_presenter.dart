import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/domain/usecases/login_usecase.dart';
import 'package:social/presentation/login/bloc/login_state.dart';

class LoginPresenter extends Cubit<LoginState> {
  final LoginUsecase _loginUsecase;
  LoginPresenter(this._loginUsecase) : super(LoginState.initial());
  Future<void> login(LoginRequest request) async {
    if (request.email.isEmpty || request.password.isEmpty) {
      emit(
        state.copyWith(
          status: LoginStatus.submissionFailure,
          errorMessage: "Vui lòng nhập đầy đủ thông tin",
        ),
      );
      return;
    }
    emit(state.copyWith(status: LoginStatus.submissionInProgress));
    try {
      final response = await _loginUsecase.run(request);
      final token = response.content.token;
      final expiresIn = response.content.expiresIn;
      if (token?.isNotEmpty == true && expiresIn != null) {
        injector.get<LocalStorageService>().saveToken(token!, expiresIn);
      }
      emit(
        state.copyWith(
          status: LoginStatus.submissionSuccess,
          response: response,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);

      emit(
        state.copyWith(
          status: LoginStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
