// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_change_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileChangeState {

 ProfileChangeStatus get status; ProfileResponse? get response; String? get errorMessage;
/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileChangeStateCopyWith<ProfileChangeState> get copyWith => _$ProfileChangeStateCopyWithImpl<ProfileChangeState>(this as ProfileChangeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileChangeState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ProfileChangeState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileChangeStateCopyWith<$Res>  {
  factory $ProfileChangeStateCopyWith(ProfileChangeState value, $Res Function(ProfileChangeState) _then) = _$ProfileChangeStateCopyWithImpl;
@useResult
$Res call({
 ProfileChangeStatus status, ProfileResponse? response, String? errorMessage
});


$ProfileResponseCopyWith<$Res>? get response;

}
/// @nodoc
class _$ProfileChangeStateCopyWithImpl<$Res>
    implements $ProfileChangeStateCopyWith<$Res> {
  _$ProfileChangeStateCopyWithImpl(this._self, this._then);

  final ProfileChangeState _self;
  final $Res Function(ProfileChangeState) _then;

/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileChangeStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as ProfileResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $ProfileResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileChangeState].
extension ProfileChangeStatePatterns on ProfileChangeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileChangeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileChangeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileChangeState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileChangeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileChangeState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileChangeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileChangeStatus status,  ProfileResponse? response,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileChangeState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileChangeStatus status,  ProfileResponse? response,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfileChangeState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileChangeStatus status,  ProfileResponse? response,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileChangeState() when $default != null:
return $default(_that.status,_that.response,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileChangeState implements ProfileChangeState {
  const _ProfileChangeState({this.status = ProfileChangeStatus.initial, this.response, this.errorMessage});
  

@override@JsonKey() final  ProfileChangeStatus status;
@override final  ProfileResponse? response;
@override final  String? errorMessage;

/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileChangeStateCopyWith<_ProfileChangeState> get copyWith => __$ProfileChangeStateCopyWithImpl<_ProfileChangeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileChangeState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,errorMessage);

@override
String toString() {
  return 'ProfileChangeState(status: $status, response: $response, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfileChangeStateCopyWith<$Res> implements $ProfileChangeStateCopyWith<$Res> {
  factory _$ProfileChangeStateCopyWith(_ProfileChangeState value, $Res Function(_ProfileChangeState) _then) = __$ProfileChangeStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileChangeStatus status, ProfileResponse? response, String? errorMessage
});


@override $ProfileResponseCopyWith<$Res>? get response;

}
/// @nodoc
class __$ProfileChangeStateCopyWithImpl<$Res>
    implements _$ProfileChangeStateCopyWith<$Res> {
  __$ProfileChangeStateCopyWithImpl(this._self, this._then);

  final _ProfileChangeState _self;
  final $Res Function(_ProfileChangeState) _then;

/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = freezed,Object? errorMessage = freezed,}) {
  return _then(_ProfileChangeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileChangeStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as ProfileResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProfileChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $ProfileResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

// dart format on
