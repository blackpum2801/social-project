// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) =>
    _CommentResponse(
      name: json['name'] as String,
      content: json['content'] as String,
      userAvatar: json['user_avatar'] as String?,
    );

Map<String, dynamic> _$CommentResponseToJson(_CommentResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'user_avatar': instance.userAvatar,
    };
