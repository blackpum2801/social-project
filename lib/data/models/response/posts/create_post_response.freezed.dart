// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePostResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool get status;
/// Create a copy of CreatePostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostResponseCopyWith<CreatePostResponse> get copyWith => _$CreatePostResponseCopyWithImpl<CreatePostResponse>(this as CreatePostResponse, _$identity);

  /// Serializes this CreatePostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status);

@override
String toString() {
  return 'CreatePostResponse(message: $message, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class $CreatePostResponseCopyWith<$Res>  {
  factory $CreatePostResponseCopyWith(CreatePostResponse value, $Res Function(CreatePostResponse) _then) = _$CreatePostResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status
});




}
/// @nodoc
class _$CreatePostResponseCopyWithImpl<$Res>
    implements $CreatePostResponseCopyWith<$Res> {
  _$CreatePostResponseCopyWithImpl(this._self, this._then);

  final CreatePostResponse _self;
  final $Res Function(CreatePostResponse) _then;

/// Create a copy of CreatePostResponse
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


/// Adds pattern-matching-related methods to [CreatePostResponse].
extension CreatePostResponsePatterns on CreatePostResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostResponse() when $default != null:
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
case _CreatePostResponse() when $default != null:
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
case _CreatePostResponse():
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
case _CreatePostResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostResponse implements CreatePostResponse {
  const _CreatePostResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, required this.status}): _message = message;
  factory _CreatePostResponse.fromJson(Map<String, dynamic> json) => _$CreatePostResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool status;

/// Create a copy of CreatePostResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostResponseCopyWith<_CreatePostResponse> get copyWith => __$CreatePostResponseCopyWithImpl<_CreatePostResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status);

@override
String toString() {
  return 'CreatePostResponse(message: $message, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CreatePostResponseCopyWith<$Res> implements $CreatePostResponseCopyWith<$Res> {
  factory _$CreatePostResponseCopyWith(_CreatePostResponse value, $Res Function(_CreatePostResponse) _then) = __$CreatePostResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool status
});




}
/// @nodoc
class __$CreatePostResponseCopyWithImpl<$Res>
    implements _$CreatePostResponseCopyWith<$Res> {
  __$CreatePostResponseCopyWithImpl(this._self, this._then);

  final _CreatePostResponse _self;
  final $Res Function(_CreatePostResponse) _then;

/// Create a copy of CreatePostResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = null,}) {
  return _then(_CreatePostResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
