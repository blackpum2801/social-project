import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/profile_change_usecase.dart';
import 'package:social/presentation/profile_change/bloc/profile_change_presenter.dart';

class ProfileChangeModule {
  static Future<void> inject() async {
    injector.registerFactory<ProfileChangePresenter>(
      () => ProfileChangePresenter(injector.get<ProfileChangeUsecase>()),
    );
  }
}
