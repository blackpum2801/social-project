// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileRequest {

 String? get name;@JsonKey(name: 'nick_name') String? get nickName; String? get intro;@JsonKey(name: 'date_of_birth') String? get dateOfBirth; String? get gender; String? get phoneNumber; String? get avatar; String? get banner;
/// Create a copy of ProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileRequestCopyWith<ProfileRequest> get copyWith => _$ProfileRequestCopyWithImpl<ProfileRequest>(this as ProfileRequest, _$identity);

  /// Serializes this ProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickName,intro,dateOfBirth,gender,phoneNumber,avatar,banner);

@override
String toString() {
  return 'ProfileRequest(name: $name, nickName: $nickName, intro: $intro, dateOfBirth: $dateOfBirth, gender: $gender, phoneNumber: $phoneNumber, avatar: $avatar, banner: $banner)';
}


}

/// @nodoc
abstract mixin class $ProfileRequestCopyWith<$Res>  {
  factory $ProfileRequestCopyWith(ProfileRequest value, $Res Function(ProfileRequest) _then) = _$ProfileRequestCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'nick_name') String? nickName, String? intro,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? gender, String? phoneNumber, String? avatar, String? banner
});




}
/// @nodoc
class _$ProfileRequestCopyWithImpl<$Res>
    implements $ProfileRequestCopyWith<$Res> {
  _$ProfileRequestCopyWithImpl(this._self, this._then);

  final ProfileRequest _self;
  final $Res Function(ProfileRequest) _then;

/// Create a copy of ProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? nickName = freezed,Object? intro = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? avatar = freezed,Object? banner = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileRequest].
extension ProfileRequestPatterns on ProfileRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProfileRequest():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'nick_name')  String? nickName,  String? intro, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? phoneNumber,  String? avatar,  String? banner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileRequest() when $default != null:
return $default(_that.name,_that.nickName,_that.intro,_that.dateOfBirth,_that.gender,_that.phoneNumber,_that.avatar,_that.banner);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'nick_name')  String? nickName,  String? intro, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? phoneNumber,  String? avatar,  String? banner)  $default,) {final _that = this;
switch (_that) {
case _ProfileRequest():
return $default(_that.name,_that.nickName,_that.intro,_that.dateOfBirth,_that.gender,_that.phoneNumber,_that.avatar,_that.banner);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'nick_name')  String? nickName,  String? intro, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? phoneNumber,  String? avatar,  String? banner)?  $default,) {final _that = this;
switch (_that) {
case _ProfileRequest() when $default != null:
return $default(_that.name,_that.nickName,_that.intro,_that.dateOfBirth,_that.gender,_that.phoneNumber,_that.avatar,_that.banner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileRequest implements ProfileRequest {
  const _ProfileRequest({this.name, @JsonKey(name: 'nick_name') this.nickName, this.intro, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.gender, this.phoneNumber, this.avatar, this.banner});
  factory _ProfileRequest.fromJson(Map<String, dynamic> json) => _$ProfileRequestFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'nick_name') final  String? nickName;
@override final  String? intro;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override final  String? gender;
@override final  String? phoneNumber;
@override final  String? avatar;
@override final  String? banner;

/// Create a copy of ProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileRequestCopyWith<_ProfileRequest> get copyWith => __$ProfileRequestCopyWithImpl<_ProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nickName,intro,dateOfBirth,gender,phoneNumber,avatar,banner);

@override
String toString() {
  return 'ProfileRequest(name: $name, nickName: $nickName, intro: $intro, dateOfBirth: $dateOfBirth, gender: $gender, phoneNumber: $phoneNumber, avatar: $avatar, banner: $banner)';
}


}

/// @nodoc
abstract mixin class _$ProfileRequestCopyWith<$Res> implements $ProfileRequestCopyWith<$Res> {
  factory _$ProfileRequestCopyWith(_ProfileRequest value, $Res Function(_ProfileRequest) _then) = __$ProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'nick_name') String? nickName, String? intro,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? gender, String? phoneNumber, String? avatar, String? banner
});




}
/// @nodoc
class __$ProfileRequestCopyWithImpl<$Res>
    implements _$ProfileRequestCopyWith<$Res> {
  __$ProfileRequestCopyWithImpl(this._self, this._then);

  final _ProfileRequest _self;
  final $Res Function(_ProfileRequest) _then;

/// Create a copy of ProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? nickName = freezed,Object? intro = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? phoneNumber = freezed,Object? avatar = freezed,Object? banner = freezed,}) {
  return _then(_ProfileRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
