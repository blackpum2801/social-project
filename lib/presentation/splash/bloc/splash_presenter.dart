import 'package:social/core/services/local_storage_service.dart';

class SplashPresenter {
  final LocalStorageService _localStorage;

  SplashPresenter(this._localStorage);

  Future<bool> checkAuth() async {
    final token = await _localStorage.getToken();
    final valid = await _localStorage.isTokenValid();

    if (token != null && token.isNotEmpty && valid) {
      return true;
    } else {
      await _localStorage.clearToken();
      return false;
    }
  }
}
