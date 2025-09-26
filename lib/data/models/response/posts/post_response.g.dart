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
      statusCode: (json['status_code'] as num?)?.toInt(),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$PostResponseToJson(_PostResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'content': instance.content,
      'status_code': instance.statusCode,
      'status': instance.status,
    };

_PostComment _$PostCommentFromJson(Map<String, dynamic> json) => _PostComment(
  name: json['name'] as String,
  content: json['content'] as String,
  userAvatar: json['user_avatar'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$PostCommentToJson(_PostComment instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'user_avatar': instance.userAvatar,
      'created_at': instance.createdAt,
    };

_PostContent _$PostContentFromJson(Map<String, dynamic> json) => _PostContent(
  id: (json['id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
  userName: json['user_name'] as String?,
  nickName: json['nick_name'] as String?,
  userAvatar: json['user_avatar'] as String?,
  contents: json['contents'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  isLiked: (json['is_liked'] as num?)?.toInt() ?? 0,
  totalComment: (json['total_comment'] as num?)?.toInt() ?? 0,
  totalLiked: (json['total_liked'] as num?)?.toInt() ?? 0,
  liked:
      (json['liked'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  comments:
      (json['comments'] as List<dynamic>?)
          ?.map((e) => PostComment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  timeCreate: json['time_create'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$PostContentToJson(_PostContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'nick_name': instance.nickName,
      'user_avatar': instance.userAvatar,
      'contents': instance.contents,
      'images': instance.images,
      'is_liked': instance.isLiked,
      'total_comment': instance.totalComment,
      'total_liked': instance.totalLiked,
      'liked': instance.liked,
      'comments': instance.comments,
      'time_create': instance.timeCreate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
