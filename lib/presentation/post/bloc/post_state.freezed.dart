// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {

 PostStatus get status; CreatePostResponse? get response; PostResponse? get postsResponse; LikePostResponse? get likeResponse; String? get errorMessage; List<File> get selectedImages;
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostStateCopyWith<PostState> get copyWith => _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.postsResponse, postsResponse) || other.postsResponse == postsResponse)&&(identical(other.likeResponse, likeResponse) || other.likeResponse == likeResponse)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.selectedImages, selectedImages));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,postsResponse,likeResponse,errorMessage,const DeepCollectionEquality().hash(selectedImages));

@override
String toString() {
  return 'PostState(status: $status, response: $response, postsResponse: $postsResponse, likeResponse: $likeResponse, errorMessage: $errorMessage, selectedImages: $selectedImages)';
}


}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res>  {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) = _$PostStateCopyWithImpl;
@useResult
$Res call({
 PostStatus status, CreatePostResponse? response, PostResponse? postsResponse, LikePostResponse? likeResponse, String? errorMessage, List<File> selectedImages
});


$CreatePostResponseCopyWith<$Res>? get response;$PostResponseCopyWith<$Res>? get postsResponse;$LikePostResponseCopyWith<$Res>? get likeResponse;

}
/// @nodoc
class _$PostStateCopyWithImpl<$Res>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? response = freezed,Object? postsResponse = freezed,Object? likeResponse = freezed,Object? errorMessage = freezed,Object? selectedImages = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CreatePostResponse?,postsResponse: freezed == postsResponse ? _self.postsResponse : postsResponse // ignore: cast_nullable_to_non_nullable
as PostResponse?,likeResponse: freezed == likeResponse ? _self.likeResponse : likeResponse // ignore: cast_nullable_to_non_nullable
as LikePostResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedImages: null == selectedImages ? _self.selectedImages : selectedImages // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePostResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $CreatePostResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostResponseCopyWith<$Res>? get postsResponse {
    if (_self.postsResponse == null) {
    return null;
  }

  return $PostResponseCopyWith<$Res>(_self.postsResponse!, (value) {
    return _then(_self.copyWith(postsResponse: value));
  });
}/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikePostResponseCopyWith<$Res>? get likeResponse {
    if (_self.likeResponse == null) {
    return null;
  }

  return $LikePostResponseCopyWith<$Res>(_self.likeResponse!, (value) {
    return _then(_self.copyWith(likeResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostState value)  $default,){
final _that = this;
switch (_that) {
case _PostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostState value)?  $default,){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PostStatus status,  CreatePostResponse? response,  PostResponse? postsResponse,  LikePostResponse? likeResponse,  String? errorMessage,  List<File> selectedImages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.status,_that.response,_that.postsResponse,_that.likeResponse,_that.errorMessage,_that.selectedImages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PostStatus status,  CreatePostResponse? response,  PostResponse? postsResponse,  LikePostResponse? likeResponse,  String? errorMessage,  List<File> selectedImages)  $default,) {final _that = this;
switch (_that) {
case _PostState():
return $default(_that.status,_that.response,_that.postsResponse,_that.likeResponse,_that.errorMessage,_that.selectedImages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PostStatus status,  CreatePostResponse? response,  PostResponse? postsResponse,  LikePostResponse? likeResponse,  String? errorMessage,  List<File> selectedImages)?  $default,) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.status,_that.response,_that.postsResponse,_that.likeResponse,_that.errorMessage,_that.selectedImages);case _:
  return null;

}
}

}

/// @nodoc


class _PostState implements PostState {
  const _PostState({this.status = PostStatus.initial, this.response, this.postsResponse, this.likeResponse, this.errorMessage, final  List<File> selectedImages = const []}): _selectedImages = selectedImages;
  

@override@JsonKey() final  PostStatus status;
@override final  CreatePostResponse? response;
@override final  PostResponse? postsResponse;
@override final  LikePostResponse? likeResponse;
@override final  String? errorMessage;
 final  List<File> _selectedImages;
@override@JsonKey() List<File> get selectedImages {
  if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedImages);
}


/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostStateCopyWith<_PostState> get copyWith => __$PostStateCopyWithImpl<_PostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostState&&(identical(other.status, status) || other.status == status)&&(identical(other.response, response) || other.response == response)&&(identical(other.postsResponse, postsResponse) || other.postsResponse == postsResponse)&&(identical(other.likeResponse, likeResponse) || other.likeResponse == likeResponse)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._selectedImages, _selectedImages));
}


@override
int get hashCode => Object.hash(runtimeType,status,response,postsResponse,likeResponse,errorMessage,const DeepCollectionEquality().hash(_selectedImages));

@override
String toString() {
  return 'PostState(status: $status, response: $response, postsResponse: $postsResponse, likeResponse: $likeResponse, errorMessage: $errorMessage, selectedImages: $selectedImages)';
}


}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(_PostState value, $Res Function(_PostState) _then) = __$PostStateCopyWithImpl;
@override @useResult
$Res call({
 PostStatus status, CreatePostResponse? response, PostResponse? postsResponse, LikePostResponse? likeResponse, String? errorMessage, List<File> selectedImages
});


@override $CreatePostResponseCopyWith<$Res>? get response;@override $PostResponseCopyWith<$Res>? get postsResponse;@override $LikePostResponseCopyWith<$Res>? get likeResponse;

}
/// @nodoc
class __$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? response = freezed,Object? postsResponse = freezed,Object? likeResponse = freezed,Object? errorMessage = freezed,Object? selectedImages = null,}) {
  return _then(_PostState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,response: freezed == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CreatePostResponse?,postsResponse: freezed == postsResponse ? _self.postsResponse : postsResponse // ignore: cast_nullable_to_non_nullable
as PostResponse?,likeResponse: freezed == likeResponse ? _self.likeResponse : likeResponse // ignore: cast_nullable_to_non_nullable
as LikePostResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedImages: null == selectedImages ? _self._selectedImages : selectedImages // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePostResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
    return null;
  }

  return $CreatePostResponseCopyWith<$Res>(_self.response!, (value) {
    return _then(_self.copyWith(response: value));
  });
}/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostResponseCopyWith<$Res>? get postsResponse {
    if (_self.postsResponse == null) {
    return null;
  }

  return $PostResponseCopyWith<$Res>(_self.postsResponse!, (value) {
    return _then(_self.copyWith(postsResponse: value));
  });
}/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikePostResponseCopyWith<$Res>? get likeResponse {
    if (_self.likeResponse == null) {
    return null;
  }

  return $LikePostResponseCopyWith<$Res>(_self.likeResponse!, (value) {
    return _then(_self.copyWith(likeResponse: value));
  });
}
}

// dart format on
