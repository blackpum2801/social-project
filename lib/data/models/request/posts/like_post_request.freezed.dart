// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikePostRequest {

@JsonKey(name: 'post_id') int get postId;
/// Create a copy of LikePostRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikePostRequestCopyWith<LikePostRequest> get copyWith => _$LikePostRequestCopyWithImpl<LikePostRequest>(this as LikePostRequest, _$identity);

  /// Serializes this LikePostRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikePostRequest&&(identical(other.postId, postId) || other.postId == postId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'LikePostRequest(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $LikePostRequestCopyWith<$Res>  {
  factory $LikePostRequestCopyWith(LikePostRequest value, $Res Function(LikePostRequest) _then) = _$LikePostRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'post_id') int postId
});




}
/// @nodoc
class _$LikePostRequestCopyWithImpl<$Res>
    implements $LikePostRequestCopyWith<$Res> {
  _$LikePostRequestCopyWithImpl(this._self, this._then);

  final LikePostRequest _self;
  final $Res Function(LikePostRequest) _then;

/// Create a copy of LikePostRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LikePostRequest].
extension LikePostRequestPatterns on LikePostRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikePostRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikePostRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikePostRequest value)  $default,){
final _that = this;
switch (_that) {
case _LikePostRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikePostRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LikePostRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'post_id')  int postId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikePostRequest() when $default != null:
return $default(_that.postId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'post_id')  int postId)  $default,) {final _that = this;
switch (_that) {
case _LikePostRequest():
return $default(_that.postId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'post_id')  int postId)?  $default,) {final _that = this;
switch (_that) {
case _LikePostRequest() when $default != null:
return $default(_that.postId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LikePostRequest implements LikePostRequest {
  const _LikePostRequest({@JsonKey(name: 'post_id') required this.postId});
  factory _LikePostRequest.fromJson(Map<String, dynamic> json) => _$LikePostRequestFromJson(json);

@override@JsonKey(name: 'post_id') final  int postId;

/// Create a copy of LikePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikePostRequestCopyWith<_LikePostRequest> get copyWith => __$LikePostRequestCopyWithImpl<_LikePostRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikePostRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikePostRequest&&(identical(other.postId, postId) || other.postId == postId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'LikePostRequest(postId: $postId)';
}


}

/// @nodoc
abstract mixin class _$LikePostRequestCopyWith<$Res> implements $LikePostRequestCopyWith<$Res> {
  factory _$LikePostRequestCopyWith(_LikePostRequest value, $Res Function(_LikePostRequest) _then) = __$LikePostRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'post_id') int postId
});




}
/// @nodoc
class __$LikePostRequestCopyWithImpl<$Res>
    implements _$LikePostRequestCopyWith<$Res> {
  __$LikePostRequestCopyWithImpl(this._self, this._then);

  final _LikePostRequest _self;
  final $Res Function(_LikePostRequest) _then;

/// Create a copy of LikePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(_LikePostRequest(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
