// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool? get status; RefreshContent get content;
/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshResponseCopyWith<RefreshResponse> get copyWith => _$RefreshResponseCopyWithImpl<RefreshResponse>(this as RefreshResponse, _$identity);

  /// Serializes this RefreshResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status,content);

@override
String toString() {
  return 'RefreshResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class $RefreshResponseCopyWith<$Res>  {
  factory $RefreshResponseCopyWith(RefreshResponse value, $Res Function(RefreshResponse) _then) = _$RefreshResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool? status, RefreshContent content
});


$RefreshContentCopyWith<$Res> get content;

}
/// @nodoc
class _$RefreshResponseCopyWithImpl<$Res>
    implements $RefreshResponseCopyWith<$Res> {
  _$RefreshResponseCopyWithImpl(this._self, this._then);

  final RefreshResponse _self;
  final $Res Function(RefreshResponse) _then;

/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? status = freezed,Object? content = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as RefreshContent,
  ));
}
/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshContentCopyWith<$Res> get content {
  
  return $RefreshContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [RefreshResponse].
extension RefreshResponsePatterns on RefreshResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshResponse value)  $default,){
final _that = this;
switch (_that) {
case _RefreshResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  RefreshContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  RefreshContent content)  $default,) {final _that = this;
switch (_that) {
case _RefreshResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  RefreshContent content)?  $default,) {final _that = this;
switch (_that) {
case _RefreshResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshResponse implements RefreshResponse {
  const _RefreshResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, this.status, required this.content}): _message = message;
  factory _RefreshResponse.fromJson(Map<String, dynamic> json) => _$RefreshResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool? status;
@override final  RefreshContent content;

/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshResponseCopyWith<_RefreshResponse> get copyWith => __$RefreshResponseCopyWithImpl<_RefreshResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status,content);

@override
String toString() {
  return 'RefreshResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class _$RefreshResponseCopyWith<$Res> implements $RefreshResponseCopyWith<$Res> {
  factory _$RefreshResponseCopyWith(_RefreshResponse value, $Res Function(_RefreshResponse) _then) = __$RefreshResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool? status, RefreshContent content
});


@override $RefreshContentCopyWith<$Res> get content;

}
/// @nodoc
class __$RefreshResponseCopyWithImpl<$Res>
    implements _$RefreshResponseCopyWith<$Res> {
  __$RefreshResponseCopyWithImpl(this._self, this._then);

  final _RefreshResponse _self;
  final $Res Function(_RefreshResponse) _then;

/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = freezed,Object? content = null,}) {
  return _then(_RefreshResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as RefreshContent,
  ));
}

/// Create a copy of RefreshResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefreshContentCopyWith<$Res> get content {
  
  return $RefreshContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$RefreshContent {

 String get token;@JsonKey(name: 'expires_in') int get expiresIn;
/// Create a copy of RefreshContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshContentCopyWith<RefreshContent> get copyWith => _$RefreshContentCopyWithImpl<RefreshContent>(this as RefreshContent, _$identity);

  /// Serializes this RefreshContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshContent&&(identical(other.token, token) || other.token == token)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,expiresIn);

@override
String toString() {
  return 'RefreshContent(token: $token, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $RefreshContentCopyWith<$Res>  {
  factory $RefreshContentCopyWith(RefreshContent value, $Res Function(RefreshContent) _then) = _$RefreshContentCopyWithImpl;
@useResult
$Res call({
 String token,@JsonKey(name: 'expires_in') int expiresIn
});




}
/// @nodoc
class _$RefreshContentCopyWithImpl<$Res>
    implements $RefreshContentCopyWith<$Res> {
  _$RefreshContentCopyWithImpl(this._self, this._then);

  final RefreshContent _self;
  final $Res Function(RefreshContent) _then;

/// Create a copy of RefreshContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? expiresIn = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshContent].
extension RefreshContentPatterns on RefreshContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshContent value)  $default,){
final _that = this;
switch (_that) {
case _RefreshContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshContent value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshContent() when $default != null:
return $default(_that.token,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'expires_in')  int expiresIn)  $default,) {final _that = this;
switch (_that) {
case _RefreshContent():
return $default(_that.token,_that.expiresIn);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @JsonKey(name: 'expires_in')  int expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _RefreshContent() when $default != null:
return $default(_that.token,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshContent implements RefreshContent {
  const _RefreshContent({required this.token, @JsonKey(name: 'expires_in') required this.expiresIn});
  factory _RefreshContent.fromJson(Map<String, dynamic> json) => _$RefreshContentFromJson(json);

@override final  String token;
@override@JsonKey(name: 'expires_in') final  int expiresIn;

/// Create a copy of RefreshContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshContentCopyWith<_RefreshContent> get copyWith => __$RefreshContentCopyWithImpl<_RefreshContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshContent&&(identical(other.token, token) || other.token == token)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,expiresIn);

@override
String toString() {
  return 'RefreshContent(token: $token, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$RefreshContentCopyWith<$Res> implements $RefreshContentCopyWith<$Res> {
  factory _$RefreshContentCopyWith(_RefreshContent value, $Res Function(_RefreshContent) _then) = __$RefreshContentCopyWithImpl;
@override @useResult
$Res call({
 String token,@JsonKey(name: 'expires_in') int expiresIn
});




}
/// @nodoc
class __$RefreshContentCopyWithImpl<$Res>
    implements _$RefreshContentCopyWith<$Res> {
  __$RefreshContentCopyWithImpl(this._self, this._then);

  final _RefreshContent _self;
  final $Res Function(_RefreshContent) _then;

/// Create a copy of RefreshContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? expiresIn = null,}) {
  return _then(_RefreshContent(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
