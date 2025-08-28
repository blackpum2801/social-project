// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String?,
      avatar: json['user_avatar'] as String?,
      nickName: json['nick_name'] as String?,
      banner: json['banner'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: json['gender'] as String?,
      intro: json['intro'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'user_avatar': instance.avatar,
      'nick_name': instance.nickName,
      'banner': instance.banner,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'intro': instance.intro,
    };
