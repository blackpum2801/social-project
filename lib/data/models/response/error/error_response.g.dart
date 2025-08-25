// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    _ErrorResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool? ?? false,
    );

Map<String, dynamic> _$ErrorResponseToJson(_ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
    };
