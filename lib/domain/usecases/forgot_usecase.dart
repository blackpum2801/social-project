import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/data/models/response/forgot/forgot_response.dart';
import 'package:social/domain/repo/forgot_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run(Input input);
}

class ForgotUsecase extends FutureUsecase<ForgotRequest, ForgotResponse> {
  @override
  Future<ForgotResponse> run(ForgotRequest request) =>
      injector.get<ForgotRepository>().forgot(request: request);
}
