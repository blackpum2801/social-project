import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/domain/repo/profile_change_password_repository.dart';

class ProfileChangePasswordRepositoryImpl
    extends ProfileChangePasswordRepository {
  final ApiServices _apiServices;
  ProfileChangePasswordRepositoryImpl(this._apiServices);
  @override
  Future<AuthResponse> changePassword({
    required RegisterRequest request,
  }) async {
    final res = await _apiServices.calAPIChangePassword(request: request);
    return res;
  }
}
