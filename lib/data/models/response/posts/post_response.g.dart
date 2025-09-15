// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostResponse _$PostResponseFromJson(Map<String, dynamic> json) =>
    _PostResponse(
      message: (json['message'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) => PostContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostResponseToJson(_PostResponse instance) =>
    <String, dynamic>{'message': instance.message, 'content': instance.content};

_PostContent _$PostContentFromJson(Map<String, dynamic> json) => _PostContent(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  contents: json['contents'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$PostContentToJson(_PostContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'contents': instance.contents,
      'images': instance.images,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
