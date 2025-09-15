// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostRequest _$CreatePostRequestFromJson(Map<String, dynamic> json) =>
    _CreatePostRequest(
      contents: json['contents'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CreatePostRequestToJson(_CreatePostRequest instance) =>
    <String, dynamic>{'contents': instance.contents, 'images': instance.images};
