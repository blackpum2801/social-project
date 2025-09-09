// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshResponse _$RefreshResponseFromJson(Map<String, dynamic> json) =>
    _RefreshResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool?,
      content: RefreshContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefreshResponseToJson(_RefreshResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
      'content': instance.content,
    };

_RefreshContent _$RefreshContentFromJson(Map<String, dynamic> json) =>
    _RefreshContent(
      token: json['token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$RefreshContentToJson(_RefreshContent instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires_in': instance.expiresIn,
    };
