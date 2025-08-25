import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';

abstract class RegisterRepository {
  Future<RegisterResponse> register({required RegisterRequest request});
}
