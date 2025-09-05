import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/domain/repo/profile_change_repository.dart';

class ProfileChangeRepositoryImpl extends ProfileChangeRepository {
  final ApiServices _apiServices;
  ProfileChangeRepositoryImpl(this._apiServices);

  @override
  Future<ProfileResponse> updateMe(Map<String, dynamic> body) async {
    final res = await _apiServices.updateMeProfile(body: body);
    return res;
  }
}
