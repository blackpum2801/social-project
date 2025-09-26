// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikePostResponse _$LikePostResponseFromJson(Map<String, dynamic> json) =>
    _LikePostResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      statusCode: (json['status_code'] as num).toInt(),
      status: json['status'] as bool,
    );

Map<String, dynamic> _$LikePostResponseToJson(_LikePostResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
    };
