// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_change_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileChangePasswordState {

 ProfileChangePasswordStatus get status; AuthResponse? get response; String? get errorMessage;
/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileChangePasswordStateCopyWith<ProfileChangePasswordState> get copyWith => _$ProfileChangePasswordStateCopyWithImpl<ProfileChangePasswordState>(this as ProfileChangePasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileChangePasswordState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ProfileChangePasswordState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileChangePasswordStateCopyWith<$Res>  {
  factory $ProfileChangePasswordStateCopyWith(ProfileChangePasswordState value, $Res Function(ProfileChangePasswordState) _then) = _$ProfileChangePasswordStateCopyWithImpl;
@useResult
$Res call({
 ProfileChangePasswordStatus status, AuthResponse? response, String? errorMessage
});


$AuthResponseCopyWith<$Res>? get response;

}
/// @nodoc
class _$ProfileChangePasswordStateCopyWithImpl<$Res>
    implements $ProfileChangePasswordStateCopyWith<$Res> {
  _$ProfileChangePasswordStateCopyWithImpl(this._self, this._then);

  final ProfileChangePasswordState _self;
  final $Res Function(ProfileChangePasswordState) _then;

/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileChangePasswordStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AuthResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $AuthResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileChangePasswordState].
extension ProfileChangePasswordStatePatterns on ProfileChangePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileChangePasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileChangePasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileChangePasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileChangePasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileChangePasswordStatus status,  AuthResponse? response,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileChangePasswordState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileChangePasswordStatus status,  AuthResponse? response,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfileChangePasswordState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileChangePasswordStatus status,  AuthResponse? response,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileChangePasswordState() when $default != null:
return $default(_that.status,_that.response,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileChangePasswordState implements ProfileChangePasswordState {
  const _ProfileChangePasswordState({this.status = ProfileChangePasswordStatus.initial, this.response, this.errorMessage});
  

@override@JsonKey() final  ProfileChangePasswordStatus status;
@override final  AuthResponse? response;
@override final  String? errorMessage;

/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileChangePasswordStateCopyWith<_ProfileChangePasswordState> get copyWith => __$ProfileChangePasswordStateCopyWithImpl<_ProfileChangePasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileChangePasswordState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ProfileChangePasswordState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfileChangePasswordStateCopyWith<$Res> implements $ProfileChangePasswordStateCopyWith<$Res> {
  factory _$ProfileChangePasswordStateCopyWith(_ProfileChangePasswordState value, $Res Function(_ProfileChangePasswordState) _then) = __$ProfileChangePasswordStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileChangePasswordStatus status, AuthResponse? response, String? errorMessage
});


@override $AuthResponseCopyWith<$Res>? get response;

}
/// @nodoc
class __$ProfileChangePasswordStateCopyWithImpl<$Res>
    implements _$ProfileChangePasswordStateCopyWith<$Res> {
  __$ProfileChangePasswordStateCopyWithImpl(this._self, this._then);

  final _ProfileChangePasswordState _self;
  final $Res Function(_ProfileChangePasswordState) _then;

/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_ProfileChangePasswordState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileChangePasswordStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as AuthResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProfileChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $AuthResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

// dart format on
