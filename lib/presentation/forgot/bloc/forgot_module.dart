import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/forgot_usecase.dart';
import 'package:social/presentation/forgot/bloc/forgot_presenter.dart';

class ForgotModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ForgotPresenter>(
      () => ForgotPresenter(injector.get<ForgotUsecase>()),
    );
  }
}
