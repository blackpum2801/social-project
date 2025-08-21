// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterResponse _$RegisterResponseFromJson(
  Map<String, dynamic> json,
) => _RegisterResponse(
  message: (json['message'] as List<dynamic>).map((e) => e as String).toList(),
  statusCode: (json['status_code'] as num).toInt(),
  status: json['status'] as bool,
  content: RegisterContent.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RegisterResponseToJson(_RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status_code': instance.statusCode,
      'status': instance.status,
      'content': instance.content,
    };

_RegisterContent _$RegisterContentFromJson(Map<String, dynamic> json) =>
    _RegisterContent(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$RegisterContentToJson(_RegisterContent instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'expires_in': instance.expiresIn,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  userAvatar: json['user_avatar'] as String?,
  isOnline: json['is_online'] as bool?,
  nickName: json['nick_name'] as String?,
  dateOfBirth: json['date_of_birth'] as String?,
  gender: json['gender'] as String?,
  banner: json['banner'] as String?,
  intro: json['intro'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'user_avatar': instance.userAvatar,
  'is_online': instance.isOnline,
  'nick_name': instance.nickName,
  'date_of_birth': instance.dateOfBirth,
  'gender': instance.gender,
  'banner': instance.banner,
  'intro': instance.intro,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
