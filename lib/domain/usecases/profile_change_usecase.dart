import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/domain/repo/profile_change_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> callMeUpdate(Input input);
}

class ProfileChangeUsecase
    extends FutureUsecase<Map<String, dynamic>, ProfileResponse> {
  @override
  Future<ProfileResponse> callMeUpdate(Map<String, dynamic> body) {
    return injector.get<ProfileChangeRepository>().updateMe(body);
  }
}
