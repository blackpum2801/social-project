import 'package:social/data/models/response/refresh/refresh_response.dart';

abstract class RefreshRepository {
  Future<RefreshResponse?> refreshToken();
}
