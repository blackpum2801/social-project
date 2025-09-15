import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/profile_change_password_usecase.dart';
import 'package:social/presentation/profile_change_password/bloc/profile_change_password_presenter.dart';

class ProfileChangePasswordModule {
  static Future<void> inject() async {
    injector.registerFactory<ProfileChangePasswordPresenter>(
      () => ProfileChangePasswordPresenter(
        injector.get<ProfileChangePasswordUsecase>(),
      ),
    );
  }
}
