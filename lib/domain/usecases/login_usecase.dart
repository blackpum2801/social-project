import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/domain/repo/login_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run(Input input);
}

class LoginUsecase extends FutureUsecase<LoginRequest, AuthResponse> {
  @override
  Future<AuthResponse> run(LoginRequest request) =>
      injector.get<LoginRepository>().login(request: request);
}
