// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotState {

 ForgotStatus get status; ForgotResponse? get response; String? get errorMessage;
/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotStateCopyWith<ForgotState> get copyWith => _$ForgotStateCopyWithImpl<ForgotState>(this as ForgotState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ForgotState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ForgotStateCopyWith<$Res>  {
  factory $ForgotStateCopyWith(ForgotState value, $Res Function(ForgotState) _then) = _$ForgotStateCopyWithImpl;
@useResult
$Res call({
 ForgotStatus status, ForgotResponse? response, String? errorMessage
});


$ForgotResponseCopyWith<$Res>? get response;

}
/// @nodoc
class _$ForgotStateCopyWithImpl<$Res>
    implements $ForgotStateCopyWith<$Res> {
  _$ForgotStateCopyWithImpl(this._self, this._then);

  final ForgotState _self;
  final $Res Function(ForgotState) _then;

/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForgotStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as ForgotResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $ForgotResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForgotState].
extension ForgotStatePatterns on ForgotState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ForgotStatus status,  ForgotResponse? response,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotState() when $default != null:
return $default(_that.status,_that.response,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ForgotStatus status,  ForgotResponse? response,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ForgotState():
return $default(_that.status,_that.response,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ForgotStatus status,  ForgotResponse? response,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ForgotState() when $default != null:
return $default(_that.status,_that.response,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotState implements ForgotState {
  const _ForgotState({this.status = ForgotStatus.initial, this.response, this.errorMessage});
  

@override@JsonKey() final  ForgotStatus status;
@override final  ForgotResponse? response;
@override final  String? errorMessage;

/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotStateCopyWith<_ForgotState> get copyWith => __$ForgotStateCopyWithImpl<_ForgotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ForgotState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ForgotStateCopyWith<$Res> implements $ForgotStateCopyWith<$Res> {
  factory _$ForgotStateCopyWith(_ForgotState value, $Res Function(_ForgotState) _then) = __$ForgotStateCopyWithImpl;
@override @useResult
$Res call({
 ForgotStatus status, ForgotResponse? response, String? errorMessage
});


@override $ForgotResponseCopyWith<$Res>? get response;

}
/// @nodoc
class __$ForgotStateCopyWithImpl<$Res>
    implements _$ForgotStateCopyWith<$Res> {
  __$ForgotStateCopyWithImpl(this._self, this._then);

  final _ForgotState _self;
  final $Res Function(_ForgotState) _then;

/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_ForgotState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ForgotStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as ForgotResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ForgotState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $ForgotResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

// dart format on
