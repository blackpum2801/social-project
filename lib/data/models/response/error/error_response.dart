import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
sealed class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required List<String> message,
    @JsonKey(name: "status_code") required int statusCode,
    @Default(false) bool status,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
