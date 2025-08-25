import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/register_usecase/login_usecase.dart';
import 'package:social/presentation/login/bloc/login_presenter.dart';

class LoginModule {
  static Future<void> inject() async {
    injector.registerFactory<LoginPresenter>(
      () => LoginPresenter(injector.get<LoginUsecase>()),
    );
  }
}
