import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/domain/repo/profile_change_password_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> callMeChangePassword(Input input);
}

class ProfileChangePasswordUsecase
    extends FutureUsecase<RegisterRequest, AuthResponse> {
  @override
  Future<AuthResponse> callMeChangePassword(RegisterRequest request) {
    return injector.get<ProfileChangePasswordRepository>().changePassword(
      request: request,
    );
  }
}
