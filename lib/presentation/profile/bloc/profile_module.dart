import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/profile_usecase.dart';
import 'package:social/presentation/profile/bloc/profile_presenter.dart';

class ProfileModule {
  static Future<void> inject() async {
    injector.registerFactory<ProfilePresenter>(
      () => ProfilePresenter(injector.get<ProfileUsecase>()),
    );
  }
}
