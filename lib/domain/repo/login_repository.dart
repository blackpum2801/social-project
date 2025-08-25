import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';

abstract class LoginRepository {
  Future<AuthResponse> login({required LoginRequest request});
}
