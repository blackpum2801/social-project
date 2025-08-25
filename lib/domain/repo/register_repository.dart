import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';

abstract class RegisterRepository {
  Future<AuthResponse> register({required RegisterRequest request});
}
