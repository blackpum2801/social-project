// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileRequest _$ProfileRequestFromJson(Map<String, dynamic> json) =>
    _ProfileRequest(
      name: json['name'] as String?,
      nickName: json['nick_name'] as String?,
      intro: json['intro'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: json['gender'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      avatar: json['avatar'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$ProfileRequestToJson(_ProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nick_name': instance.nickName,
      'intro': instance.intro,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'avatar': instance.avatar,
      'banner': instance.banner,
    };
