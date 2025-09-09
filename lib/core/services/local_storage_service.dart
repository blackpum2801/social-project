import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _keyAccessToken = "access_token";
  static const _keyTokenExpiry = "token_expiry";

  Future<void> saveToken(String token, int expiresIn) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyAccessToken, token);

    final expiryDate = DateTime.now().add(Duration(seconds: expiresIn));
    await prefs.setString(_keyTokenExpiry, expiryDate.toIso8601String());
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyAccessToken);
  }

  Future<bool> isTokenValid() async {
    final prefs = await SharedPreferences.getInstance();
    final expiryStr = prefs.getString(_keyTokenExpiry);
    if (expiryStr == null) return false;

    final expiryDate = DateTime.tryParse(expiryStr);
    if (expiryDate == null) return false;

    return DateTime.now().isBefore(expiryDate);
  }

  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyAccessToken);
    await prefs.remove(_keyTokenExpiry);
  }
}
