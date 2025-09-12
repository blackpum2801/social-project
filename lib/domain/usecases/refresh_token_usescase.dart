import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/refresh/refresh_response.dart';
import 'package:social/domain/repo/refresh_repository.dart';

abstract class FutureUsecase<Output> {
  Future<Output?> run();
}

class RefreshUsecase extends FutureUsecase<RefreshResponse> {
  @override
  Future<RefreshResponse?> run() {
    return injector.get<RefreshRepository>().refreshToken();
  }
}
