// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotResponse {

 List<String> get message;@JsonKey(name: 'status_code') int get statusCode; bool? get status; Map<String, dynamic>? get content;
/// Create a copy of ForgotResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotResponseCopyWith<ForgotResponse> get copyWith => _$ForgotResponseCopyWithImpl<ForgotResponse>(this as ForgotResponse, _$identity);

  /// Serializes this ForgotResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotResponse&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),statusCode,status,const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'ForgotResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class $ForgotResponseCopyWith<$Res>  {
  factory $ForgotResponseCopyWith(ForgotResponse value, $Res Function(ForgotResponse) _then) = _$ForgotResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool? status, Map<String, dynamic>? content
});




}
/// @nodoc
class _$ForgotResponseCopyWithImpl<$Res>
    implements $ForgotResponseCopyWith<$Res> {
  _$ForgotResponseCopyWithImpl(this._self, this._then);

  final ForgotResponse _self;
  final $Res Function(ForgotResponse) _then;

/// Create a copy of ForgotResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? status = freezed,Object? content = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotResponse].
extension ForgotResponsePatterns on ForgotResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotResponse value)  $default,){
final _that = this;
switch (_that) {
case _ForgotResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  Map<String, dynamic>? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  Map<String, dynamic>? content)  $default,) {final _that = this;
switch (_that) {
case _ForgotResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message, @JsonKey(name: 'status_code')  int statusCode,  bool? status,  Map<String, dynamic>? content)?  $default,) {final _that = this;
switch (_that) {
case _ForgotResponse() when $default != null:
return $default(_that.message,_that.statusCode,_that.status,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotResponse implements ForgotResponse {
  const _ForgotResponse({required final  List<String> message, @JsonKey(name: 'status_code') required this.statusCode, this.status, final  Map<String, dynamic>? content}): _message = message,_content = content;
  factory _ForgotResponse.fromJson(Map<String, dynamic> json) => _$ForgotResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  bool? status;
 final  Map<String, dynamic>? _content;
@override Map<String, dynamic>? get content {
  final value = _content;
  if (value == null) return null;
  if (_content is EqualUnmodifiableMapView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ForgotResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotResponseCopyWith<_ForgotResponse> get copyWith => __$ForgotResponseCopyWithImpl<_ForgotResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotResponse&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),statusCode,status,const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'ForgotResponse(message: $message, statusCode: $statusCode, status: $status, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ForgotResponseCopyWith<$Res> implements $ForgotResponseCopyWith<$Res> {
  factory _$ForgotResponseCopyWith(_ForgotResponse value, $Res Function(_ForgotResponse) _then) = __$ForgotResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message,@JsonKey(name: 'status_code') int statusCode, bool? status, Map<String, dynamic>? content
});




}
/// @nodoc
class __$ForgotResponseCopyWithImpl<$Res>
    implements _$ForgotResponseCopyWith<$Res> {
  __$ForgotResponseCopyWithImpl(this._self, this._then);

  final _ForgotResponse _self;
  final $Res Function(_ForgotResponse) _then;

/// Create a copy of ForgotResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? status = freezed,Object? content = freezed,}) {
  return _then(_ForgotResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,content: freezed == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
