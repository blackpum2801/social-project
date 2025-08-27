import 'package:social/data/models/response/profile/profile_response.dart';

abstract class ProfileRepository {
  Future<ProfileResponse> getProfile();
}
