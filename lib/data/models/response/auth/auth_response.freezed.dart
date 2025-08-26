// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool get status; AuthContent get content;
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<AuthResponse> get copyWith => _$AuthResponseCopyWithImpl<AuthResponse>(this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status,content);

@override
String toString() {
  return 'AuthResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res>  {
  factory $AuthResponseCopyWith(AuthResponse value, $Res Function(AuthResponse) _then) = _$AuthResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status, AuthContent content
});


$AuthContentCopyWith<$Res> get content;

}
/// @nodoc
class _$AuthResponseCopyWithImpl<$Res>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? status = null,Object? content = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as AuthContent,
  ));
}
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthContentCopyWith<$Res> get content {
  
  return $AuthContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  AuthContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  AuthContent content)  $default,) {final _that = this;
switch (_that) {
case _AuthResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status,  AuthContent content)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponse implements AuthResponse {
  const _AuthResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, required this.status, required this.content}): _message = message;
  factory _AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool status;
@override final  AuthContent content;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseCopyWith<_AuthResponse> get copyWith => __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status,content);

@override
String toString() {
  return 'AuthResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res> implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(_AuthResponse value, $Res Function(_AuthResponse) _then) = __$AuthResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status, AuthContent content
});


@override $AuthContentCopyWith<$Res> get content;

}
/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = null,Object? content = null,}) {
  return _then(_AuthResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as AuthContent,
  ));
}

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthContentCopyWith<$Res> get content {
  
  return $AuthContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$AuthContent {

 String? get token; UserResponse get user;@JsonKey(name: 'expires_in') int get expiresIn;
/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthContentCopyWith<AuthContent> get copyWith => _$AuthContentCopyWithImpl<AuthContent>(this as AuthContent, _$identity);

  /// Serializes this AuthContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthContent&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,expiresIn);

@override
String toString() {
  return 'AuthContent(token: $token, user: $user, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $AuthContentCopyWith<$Res>  {
  factory $AuthContentCopyWith(AuthContent value, $Res Function(AuthContent) _then) = _$AuthContentCopyWithImpl;
@useResult
$Res call({
 String? token, UserResponse user,@JsonKey(name: 'expires_in') int expiresIn
});


$UserResponseCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthContentCopyWithImpl<$Res>
    implements $AuthContentCopyWith<$Res> {
  _$AuthContentCopyWithImpl(this._self, this._then);

  final AuthContent _self;
  final $Res Function(AuthContent) _then;

/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = null,Object? expiresIn = null,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res> get user {
  
  return $UserResponseCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthContent].
extension AuthContentPatterns on AuthContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthContent value)  $default,){
final _that = this;
switch (_that) {
case _AuthContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthContent value)?  $default,){
final _that = this;
switch (_that) {
case _AuthContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  UserResponse user, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthContent() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  UserResponse user, @JsonKey(name: 'expires_in')  int expiresIn)  $default,) {final _that = this;
switch (_that) {
case _AuthContent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  UserResponse user, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _AuthContent() when $default != null:
return $default(_that.token,_that.user,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthContent implements AuthContent {
  const _AuthContent({this.token, required this.user, @JsonKey(name: 'expires_in') required this.expiresIn});
  factory _AuthContent.fromJson(Map<String, dynamic> json) => _$AuthContentFromJson(json);

@override final  String? token;
@override final  UserResponse user;
@override@JsonKey(name: 'expires_in') final  int expiresIn;

/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthContentCopyWith<_AuthContent> get copyWith => __$AuthContentCopyWithImpl<_AuthContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthContent&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,expiresIn);

@override
String toString() {
  return 'AuthContent(token: $token, user: $user, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$AuthContentCopyWith<$Res> implements $AuthContentCopyWith<$Res> {
  factory _$AuthContentCopyWith(_AuthContent value, $Res Function(_AuthContent) _then) = __$AuthContentCopyWithImpl;
@override @useResult
$Res call({
 String? token, UserResponse user,@JsonKey(name: 'expires_in') int expiresIn
});


@override $UserResponseCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthContentCopyWithImpl<$Res>
    implements _$AuthContentCopyWith<$Res> {
  __$AuthContentCopyWithImpl(this._self, this._then);

  final _AuthContent _self;
  final $Res Function(_AuthContent) _then;

/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = null,Object? expiresIn = null,}) {
  return _then(_AuthContent(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AuthContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res> get user {
  
  return $UserResponseCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
