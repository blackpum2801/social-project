// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikePostResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool get status;
/// Create a copy of LikePostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikePostResponseCopyWith<LikePostResponse> get copyWith => _$LikePostResponseCopyWithImpl<LikePostResponse>(this as LikePostResponse, _$identity);

  /// Serializes this LikePostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikePostResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status);

@override
String toString() {
  return 'LikePostResponse(message: $message, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class $LikePostResponseCopyWith<$Res>  {
  factory $LikePostResponseCopyWith(LikePostResponse value, $Res Function(LikePostResponse) _then) = _$LikePostResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status
});




}
/// @nodoc
class _$LikePostResponseCopyWithImpl<$Res>
    implements $LikePostResponseCopyWith<$Res> {
  _$LikePostResponseCopyWithImpl(this._self, this._then);

  final LikePostResponse _self;
  final $Res Function(LikePostResponse) _then;

/// Create a copy of LikePostResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? status = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LikePostResponse].
extension LikePostResponsePatterns on LikePostResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikePostResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikePostResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikePostResponse value)  $default,){
final _that = this;
switch (_that) {
case _LikePostResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikePostResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LikePostResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikePostResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status)  $default,) {final _that = this;
switch (_that) {
case _LikePostResponse():
return $default(_that.message,_that.statusCode,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool status)?  $default,) {final _that = this;
switch (_that) {
case _LikePostResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LikePostResponse implements LikePostResponse {
  const _LikePostResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, required this.status}): _message = message;
  factory _LikePostResponse.fromJson(Map<String, dynamic> json) => _$LikePostResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool status;

/// Create a copy of LikePostResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikePostResponseCopyWith<_LikePostResponse> get copyWith => __$LikePostResponseCopyWithImpl<_LikePostResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikePostResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikePostResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status);

@override
String toString() {
  return 'LikePostResponse(message: $message, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LikePostResponseCopyWith<$Res> implements $LikePostResponseCopyWith<$Res> {
  factory _$LikePostResponseCopyWith(_LikePostResponse value, $Res Function(_LikePostResponse) _then) = __$LikePostResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status
});




}
/// @nodoc
class __$LikePostResponseCopyWithImpl<$Res>
    implements _$LikePostResponseCopyWith<$Res> {
  __$LikePostResponseCopyWithImpl(this._self, this._then);

  final _LikePostResponse _self;
  final $Res Function(_LikePostResponse) _then;

/// Create a copy of LikePostResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = null,}) {
  return _then(_LikePostResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
