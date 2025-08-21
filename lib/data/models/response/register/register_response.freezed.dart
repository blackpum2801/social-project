// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool get status; RegisterContent get content;
/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterResponseCopyWith<RegisterResponse> get copyWith => _$RegisterResponseCopyWithImpl<RegisterResponse>(this as RegisterResponse, _$identity);

  /// Serializes this RegisterResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status,content);

@override
String toString() {
  return 'RegisterResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class $RegisterResponseCopyWith<$Res>  {
  factory $RegisterResponseCopyWith(RegisterResponse value, $Res Function(RegisterResponse) _then) = _$RegisterResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status, RegisterContent content
});


$RegisterContentCopyWith<$Res> get content;

}
/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._self, this._then);

  final RegisterResponse _self;
  final $Res Function(RegisterResponse) _then;

/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? status = null,Object? content = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as RegisterContent,
  ));
}
/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterContentCopyWith<$Res> get content {
  
  return $RegisterContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterResponse].
extension RegisterResponsePatterns on RegisterResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterResponse value)  $default,){
final _that = this;
switch (_that) {
case _RegisterResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  RegisterContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  RegisterContent content)  $default,) {final _that = this;
switch (_that) {
case _RegisterResponse():
return $default(_that.message,_that.statusCode,_that.status,_that.content);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  RegisterContent content)?  $default,) {final _that = this;
switch (_that) {
case _RegisterResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterResponse implements RegisterResponse {
  const _RegisterResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, required this.status, required this.content}): _message = message;
  factory _RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool status;
@override final  RegisterContent content;

/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterResponseCopyWith<_RegisterResponse> get copyWith => __$RegisterResponseCopyWithImpl<_RegisterResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status,content);

@override
String toString() {
  return 'RegisterResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class _$RegisterResponseCopyWith<$Res> implements $RegisterResponseCopyWith<$Res> {
  factory _$RegisterResponseCopyWith(_RegisterResponse value, $Res Function(_RegisterResponse) _then) = __$RegisterResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status, RegisterContent content
});


@override $RegisterContentCopyWith<$Res> get content;

}
/// @nodoc
class __$RegisterResponseCopyWithImpl<$Res>
    implements _$RegisterResponseCopyWith<$Res> {
  __$RegisterResponseCopyWithImpl(this._self, this._then);

  final _RegisterResponse _self;
  final $Res Function(_RegisterResponse) _then;

/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = null,Object? content = null,}) {
  return _then(_RegisterResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as RegisterContent,
  ));
}

/// Create a copy of RegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterContentCopyWith<$Res> get content {
  
  return $RegisterContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$RegisterContent {

 String get token; User get user;@JsonKey(name: 'expires_in') int get expiresIn;
/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterContentCopyWith<RegisterContent> get copyWith => _$RegisterContentCopyWithImpl<RegisterContent>(this as RegisterContent, _$identity);

  /// Serializes this RegisterContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterContent&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,expiresIn);

@override
String toString() {
  return 'RegisterContent(token: $token, user: $user, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $RegisterContentCopyWith<$Res>  {
  factory $RegisterContentCopyWith(RegisterContent value, $Res Function(RegisterContent) _then) = _$RegisterContentCopyWithImpl;
@useResult
$Res call({
 String token, User user,@JsonKey(name: 'expires_in') int expiresIn
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$RegisterContentCopyWithImpl<$Res>
    implements $RegisterContentCopyWith<$Res> {
  _$RegisterContentCopyWithImpl(this._self, this._then);

  final RegisterContent _self;
  final $Res Function(RegisterContent) _then;

/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? user = null,Object? expiresIn = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterContent].
extension RegisterContentPatterns on RegisterContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterContent value)  $default,){
final _that = this;
switch (_that) {
case _RegisterContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterContent value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  User user, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterContent() when $default != null:
return $default(_that.token,_that.user,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  User user, @JsonKey(name: 'expires_in')  int expiresIn)  $default,) {final _that = this;
switch (_that) {
case _RegisterContent():
return $default(_that.token,_that.user,_that.expiresIn);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  User user, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _RegisterContent() when $default != null:
return $default(_that.token,_that.user,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterContent implements RegisterContent {
  const _RegisterContent({required this.token, required this.user, @JsonKey(name: 'expires_in') required this.expiresIn});
  factory _RegisterContent.fromJson(Map<String, dynamic> json) => _$RegisterContentFromJson(json);

@override final  String token;
@override final  User user;
@override@JsonKey(name: 'expires_in') final  int expiresIn;

/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterContentCopyWith<_RegisterContent> get copyWith => __$RegisterContentCopyWithImpl<_RegisterContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterContent&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,expiresIn);

@override
String toString() {
  return 'RegisterContent(token: $token, user: $user, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$RegisterContentCopyWith<$Res> implements $RegisterContentCopyWith<$Res> {
  factory _$RegisterContentCopyWith(_RegisterContent value, $Res Function(_RegisterContent) _then) = __$RegisterContentCopyWithImpl;
@override @useResult
$Res call({
 String token, User user,@JsonKey(name: 'expires_in') int expiresIn
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$RegisterContentCopyWithImpl<$Res>
    implements _$RegisterContentCopyWith<$Res> {
  __$RegisterContentCopyWithImpl(this._self, this._then);

  final _RegisterContent _self;
  final $Res Function(_RegisterContent) _then;

/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? user = null,Object? expiresIn = null,}) {
  return _then(_RegisterContent(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of RegisterContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

 int get id; String get name; String get email; String? get phone;@JsonKey(name: 'user_avatar') String? get userAvatar;@JsonKey(name: 'is_online') bool? get isOnline;@JsonKey(name: 'nick_name') String? get nickName;@JsonKey(name: 'date_of_birth') String? get dateOfBirth; String? get gender; String? get banner; String? get intro;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,userAvatar,isOnline,nickName,dateOfBirth,gender,banner,intro,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, userAvatar: $userAvatar, isOnline: $isOnline, nickName: $nickName, dateOfBirth: $dateOfBirth, gender: $gender, banner: $banner, intro: $intro, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String? phone,@JsonKey(name: 'user_avatar') String? userAvatar,@JsonKey(name: 'is_online') bool? isOnline,@JsonKey(name: 'nick_name') String? nickName,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? gender, String? banner, String? intro,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? userAvatar = freezed,Object? isOnline = freezed,Object? nickName = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? banner = freezed,Object? intro = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String? phone, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? banner,  String? intro, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.userAvatar,_that.isOnline,_that.nickName,_that.dateOfBirth,_that.gender,_that.banner,_that.intro,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String? phone, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? banner,  String? intro, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.userAvatar,_that.isOnline,_that.nickName,_that.dateOfBirth,_that.gender,_that.banner,_that.intro,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String? phone, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'is_online')  bool? isOnline, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? gender,  String? banner,  String? intro, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.userAvatar,_that.isOnline,_that.nickName,_that.dateOfBirth,_that.gender,_that.banner,_that.intro,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.name, required this.email, this.phone, @JsonKey(name: 'user_avatar') this.userAvatar, @JsonKey(name: 'is_online') this.isOnline, @JsonKey(name: 'nick_name') this.nickName, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.gender, this.banner, this.intro, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String? phone;
@override@JsonKey(name: 'user_avatar') final  String? userAvatar;
@override@JsonKey(name: 'is_online') final  bool? isOnline;
@override@JsonKey(name: 'nick_name') final  String? nickName;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override final  String? gender;
@override final  String? banner;
@override final  String? intro;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,userAvatar,isOnline,nickName,dateOfBirth,gender,banner,intro,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, userAvatar: $userAvatar, isOnline: $isOnline, nickName: $nickName, dateOfBirth: $dateOfBirth, gender: $gender, banner: $banner, intro: $intro, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String? phone,@JsonKey(name: 'user_avatar') String? userAvatar,@JsonKey(name: 'is_online') bool? isOnline,@JsonKey(name: 'nick_name') String? nickName,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? gender, String? banner, String? intro,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? userAvatar = freezed,Object? isOnline = freezed,Object? nickName = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? banner = freezed,Object? intro = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,intro: freezed == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
