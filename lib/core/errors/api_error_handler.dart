import 'package:dio/dio.dart';
import 'package:social/core/errors/api_error.dart';
import 'package:social/data/models/response/error/error_response.dart';

class ApiErrorHandler {
  static ApiError handle(dynamic error) {
    if (error is DioException) {
      final response = error.response;

      if (response != null && response.data != null) {
        try {
          final err = ErrorResponse.fromJson(response.data);
          return ApiError(
            message: err.message.join(", "),
            statusCode: err.statusCode,
          );
        } catch (_) {
          return ApiError(
            message: response.data.toString(),
            statusCode: response.statusCode ?? 500,
          );
        }
      }
      return ApiError(
        message: error.message ?? "Network error",
        statusCode: response?.statusCode ?? 500,
      );
    }

    return ApiError(message: error.toString(), statusCode: 500);
  }
}
