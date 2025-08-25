import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';
import 'package:social/domain/repo/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final ApiServices _apiServices;
  RegisterRepositoryImpl(this._apiServices);
  @override
  Future<RegisterResponse> register({required RegisterRequest request}) async {
    final res = await _apiServices.callAPIRegister(request: request);
    return res;
  }
}
