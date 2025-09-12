import 'package:social/core/services/api_services.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/data/models/response/refresh/refresh_response.dart';
import 'package:social/domain/repo/refresh_repository.dart';

class RefreshRepositoryImpl extends RefreshRepository {
  final ApiServices _apiServices;
  final LocalStorageService _localStorage;

  RefreshRepositoryImpl(this._apiServices, this._localStorage);

  @override
  Future<RefreshResponse?> refreshToken() async {
    final refreshToken = await _localStorage.getToken();
    if (refreshToken == null) return null;

    return await _apiServices.callAPIRefreshToken(
      request: {"refresh_token": refreshToken},
    );
  }
}
