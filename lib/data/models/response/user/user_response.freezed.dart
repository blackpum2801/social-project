// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {

 int get id; String get name; String get email;@JsonKey(name: "phone") String? get phoneNumber;@JsonKey(name: "user_avatar") String? get avatar;@JsonKey(name: "nick_name") String? get nickName; String? get banner;@JsonKey(name: "date_of_birth") String? get dateOfBirth; String? get gender; String? get intro;
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseCopyWith<UserResponse> get copyWith => _$UserResponseCopyWithImpl<UserResponse>(this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.intro, intro) || other.intro == intro));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,avatar,nickName,banner,dateOfBirth,gender,intro);

@override
String toString() {
  return 'UserResponse(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatar: $avatar, nickName: $nickName, banner: $banner, dateOfBirth: $dateOfBirth, gender: $gender, intro: $intro)';
}


}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res>  {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) _then) = _$UserResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email,@JsonKey(name: "phone") String? phoneNumber,@JsonKey(name: "user_avatar") String? avatar,@JsonKey(name: "nick_name") String? nickName, String? banner,@JsonKey(name: "date_of_birth") String? dateOfBirth, String? gender, String? intro
});




}
/// @nodoc
class _$UserResponseCopyWithImpl<$Res>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? avatar = freezed,Object? nickName = freezed,Object? banner = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? intro = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponse].
extension UserResponsePatterns on UserResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email, @JsonKey(name: "phone")  String? phoneNumber, @JsonKey(name: "user_avatar")  String? avatar, @JsonKey(name: "nick_name")  String? nickName,  String? banner, @JsonKey(name: "date_of_birth")  String? dateOfBirth,  String? gender,  String? intro)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatar,_that.nickName,_that.banner,_that.dateOfBirth,_that.gender,_that.intro);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email, @JsonKey(name: "phone")  String? phoneNumber, @JsonKey(name: "user_avatar")  String? avatar, @JsonKey(name: "nick_name")  String? nickName,  String? banner, @JsonKey(name: "date_of_birth")  String? dateOfBirth,  String? gender,  String? intro)  $default,) {final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatar,_that.nickName,_that.banner,_that.dateOfBirth,_that.gender,_that.intro);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email, @JsonKey(name: "phone")  String? phoneNumber, @JsonKey(name: "user_avatar")  String? avatar, @JsonKey(name: "nick_name")  String? nickName,  String? banner, @JsonKey(name: "date_of_birth")  String? dateOfBirth,  String? gender,  String? intro)?  $default,) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.avatar,_that.nickName,_that.banner,_that.dateOfBirth,_that.gender,_that.intro);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponse implements UserResponse {
  const _UserResponse({required this.id, required this.name, required this.email, @JsonKey(name: "phone") this.phoneNumber, @JsonKey(name: "user_avatar") this.avatar, @JsonKey(name: "nick_name") this.nickName, this.banner, @JsonKey(name: "date_of_birth") this.dateOfBirth, this.gender, this.intro});
  factory _UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

@override final  int id;
@override final  String name;
@override final  String email;
@override@JsonKey(name: "phone") final  String? phoneNumber;
@override@JsonKey(name: "user_avatar") final  String? avatar;
@override@JsonKey(name: "nick_name") final  String? nickName;
@override final  String? banner;
@override@JsonKey(name: "date_of_birth") final  String? dateOfBirth;
@override final  String? gender;
@override final  String? intro;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseCopyWith<_UserResponse> get copyWith => __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.intro, intro) || other.intro == intro));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,avatar,nickName,banner,dateOfBirth,gender,intro);

@override
String toString() {
  return 'UserResponse(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, avatar: $avatar, nickName: $nickName, banner: $banner, dateOfBirth: $dateOfBirth, gender: $gender, intro: $intro)';
}


}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(_UserResponse value, $Res Function(_UserResponse) _then) = __$UserResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email,@JsonKey(name: "phone") String? phoneNumber,@JsonKey(name: "user_avatar") String? avatar,@JsonKey(name: "nick_name") String? nickName, String? banner,@JsonKey(name: "date_of_birth") String? dateOfBirth, String? gender, String? intro
});




}
/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? avatar = freezed,Object? nickName = freezed,Object? banner = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? intro = freezed,}) {
  return _then(_UserResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
