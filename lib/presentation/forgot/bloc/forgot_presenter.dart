import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/domain/usecases/forgot_usecase.dart';
import 'package:social/presentation/forgot/bloc/forgot_state.dart';

class ForgotPresenter extends Cubit<ForgotState> {
  final ForgotUsecase _forgotUsecase;

  ForgotPresenter(this._forgotUsecase) : super(ForgotState.initial());

  Future<void> forgot(ForgotRequest request) async {
    emit(state.copyWith(status: ForgotStatus.submissionInProgress));
    try {
      final response = await _forgotUsecase.run(request);
      if (response.status == true && response.statusCode == 200) {
        emit(
          state.copyWith(
            status: ForgotStatus.submissionSuccess,
            response: response,
            errorMessage: null,
          ),
        );
      }
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: ForgotStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
