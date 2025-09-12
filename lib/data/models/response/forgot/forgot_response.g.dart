// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotResponse _$ForgotResponseFromJson(Map<String, dynamic> json) =>
    _ForgotResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool?,
      content: json['content'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ForgotResponseToJson(_ForgotResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
      'content': instance.content,
    };
