import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';
import 'package:social/data/repo_impl/register_repository_impl.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run(Input input);
}

class RegisterUsecase extends FutureUsecase<RegisterRequest, RegisterResponse> {
  @override
  Future<RegisterResponse> run(RegisterRequest request) =>
      injector.get<RegisterRepositoryImpl>().register(request: request);
}
