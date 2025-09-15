// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostResponse _$CreatePostResponseFromJson(Map<String, dynamic> json) =>
    _CreatePostResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool,
    );

Map<String, dynamic> _$CreatePostResponseToJson(_CreatePostResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
    };
