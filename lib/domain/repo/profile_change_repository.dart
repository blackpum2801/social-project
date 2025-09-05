import 'package:social/data/models/response/profile/profile_response.dart';

abstract class ProfileChangeRepository {
  Future<ProfileResponse> updateMe(Map<String, dynamic> body);
}
