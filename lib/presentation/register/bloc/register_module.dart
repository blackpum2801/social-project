import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/register_usecase/register_usecase.dart';
import 'package:social/presentation/register/bloc/register_presenter.dart';

class RegisterModule {
  static Future<void> inject() async {
    injector.registerFactory<RegisterPresenter>(
      () => RegisterPresenter(injector.get<RegisterUsecase>()),
    );
  }
}
