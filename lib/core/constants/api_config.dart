class ApiConfig {
  static const String baseUrl = 'https://courses-academy.duckdns.org/api/v1';
  // API Endpoints
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String me = '/auth/me';
  static const String refreshToken = '/auth/refresh';
  static const String forgot = '/auth/forgot';

  static const String updateAvatar = '/users/update-avatar';
  static const String updateBanner = '/users/update-banner';
  static const String updateMe = '/users/me';
  static const String changePassword = '/users/change-password';
  // Posts
  static const String createPost = '/posts';
  static const String getPost = '/posts';
  static const String likePost = '/posts/like';
  static const String commentPost = '/posts/comment';
}
