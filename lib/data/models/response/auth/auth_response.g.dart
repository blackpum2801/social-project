// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool?,
      content: AuthContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
      'content': instance.content,
    };

_AuthContent _$AuthContentFromJson(Map<String, dynamic> json) => _AuthContent(
  token: json['token'] as String?,
  user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
  expiresIn: (json['expires_in'] as num?)?.toInt(),
);

Map<String, dynamic> _$AuthContentToJson(_AuthContent instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'expires_in': instance.expiresIn,
    };
