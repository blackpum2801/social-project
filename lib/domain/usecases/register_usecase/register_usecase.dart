import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';
import 'package:social/domain/repo/register_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run(Input input);
}

class RegisterUsecase extends FutureUsecase<RegisterRequest, RegisterResponse> {
  @override
  Future<RegisterResponse> run(RegisterRequest request) =>
      injector.get<RegisterRepository>().register(request: request);
}
