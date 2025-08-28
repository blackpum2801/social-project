import 'dart:io';

import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/domain/repo/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ApiServices _apiServices;
  ProfileRepositoryImpl(this._apiServices);
  @override
  Future<ProfileResponse> getProfile() async {
    final res = await _apiServices.callAPIProfile();
    return res;
  }

  @override
  Future<ProfileResponse> updateAvatar(File file) async {
    final res = await _apiServices.updateAvatarProfile(file: file);
    return res;
  }
}
