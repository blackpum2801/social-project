import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/domain/repo/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final ApiServices _apiServices;
  LoginRepositoryImpl(this._apiServices);
  @override
  Future<AuthResponse> login({required LoginRequest request}) async {
    final res = await _apiServices.callAPILogin(request: request);
    return res;
  }
}
