// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostResponse {

 List<String> get message; List<PostContent> get content;
/// Create a copy of PostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostResponseCopyWith<PostResponse> get copyWith => _$PostResponseCopyWithImpl<PostResponse>(this as PostResponse, _$identity);

  /// Serializes this PostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostResponse&&const DeepCollectionEquality().equals(other.message, message)&&const DeepCollectionEquality().equals(other.content, content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),const DeepCollectionEquality().hash(content));

@override
String toString() {
  return 'PostResponse(message: $message, content: $content)';
}


}

/// @nodoc
abstract mixin class $PostResponseCopyWith<$Res>  {
  factory $PostResponseCopyWith(PostResponse value, $Res Function(PostResponse) _then) = _$PostResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message, List<PostContent> content
});




}
/// @nodoc
class _$PostResponseCopyWithImpl<$Res>
    implements $PostResponseCopyWith<$Res> {
  _$PostResponseCopyWithImpl(this._self, this._then);

  final PostResponse _self;
  final $Res Function(PostResponse) _then;

/// Create a copy of PostResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? content = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<PostContent>,
  ));
}

}


/// Adds pattern-matching-related methods to [PostResponse].
extension PostResponsePatterns on PostResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostResponse value)  $default,){
final _that = this;
switch (_that) {
case _PostResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message,  List<PostContent> content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
return $default(_that.message,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message,  List<PostContent> content)  $default,) {final _that = this;
switch (_that) {
case _PostResponse():
return $default(_that.message,_that.content);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message,  List<PostContent> content)?  $default,) {final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
return $default(_that.message,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostResponse implements PostResponse {
  const _PostResponse({required final  List<String> message, required final  List<PostContent> content}): _message = message,_content = content;
  factory _PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);

 final  List<String> _message;
@override List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

 final  List<PostContent> _content;
@override List<PostContent> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}


/// Create a copy of PostResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostResponseCopyWith<_PostResponse> get copyWith => __$PostResponseCopyWithImpl<_PostResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostResponse&&const DeepCollectionEquality().equals(other._message, _message)&&const DeepCollectionEquality().equals(other._content, _content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),const DeepCollectionEquality().hash(_content));

@override
String toString() {
  return 'PostResponse(message: $message, content: $content)';
}


}

/// @nodoc
abstract mixin class _$PostResponseCopyWith<$Res> implements $PostResponseCopyWith<$Res> {
  factory _$PostResponseCopyWith(_PostResponse value, $Res Function(_PostResponse) _then) = __$PostResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message, List<PostContent> content
});




}
/// @nodoc
class __$PostResponseCopyWithImpl<$Res>
    implements _$PostResponseCopyWith<$Res> {
  __$PostResponseCopyWithImpl(this._self, this._then);

  final _PostResponse _self;
  final $Res Function(_PostResponse) _then;

/// Create a copy of PostResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? content = null,}) {
  return _then(_PostResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<PostContent>,
  ));
}


}


/// @nodoc
mixin _$PostContent {

 int get id;@JsonKey(name: 'user_id') int get userId; String get contents; List<String> get images;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostContentCopyWith<PostContent> get copyWith => _$PostContentCopyWithImpl<PostContent>(this as PostContent, _$identity);

  /// Serializes this PostContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.contents, contents) || other.contents == contents)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,contents,const DeepCollectionEquality().hash(images),createdAt,updatedAt);

@override
String toString() {
  return 'PostContent(id: $id, userId: $userId, contents: $contents, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PostContentCopyWith<$Res>  {
  factory $PostContentCopyWith(PostContent value, $Res Function(PostContent) _then) = _$PostContentCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String contents, List<String> images,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$PostContentCopyWithImpl<$Res>
    implements $PostContentCopyWith<$Res> {
  _$PostContentCopyWithImpl(this._self, this._then);

  final PostContent _self;
  final $Res Function(PostContent) _then;

/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? contents = null,Object? images = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostContent].
extension PostContentPatterns on PostContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostContent value)  $default,){
final _that = this;
switch (_that) {
case _PostContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostContent value)?  $default,){
final _that = this;
switch (_that) {
case _PostContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String contents,  List<String> images, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostContent() when $default != null:
return $default(_that.id,_that.userId,_that.contents,_that.images,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String contents,  List<String> images, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PostContent():
return $default(_that.id,_that.userId,_that.contents,_that.images,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String contents,  List<String> images, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PostContent() when $default != null:
return $default(_that.id,_that.userId,_that.contents,_that.images,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostContent implements PostContent {
  const _PostContent({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.contents, required final  List<String> images, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _images = images;
  factory _PostContent.fromJson(Map<String, dynamic> json) => _$PostContentFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String contents;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostContentCopyWith<_PostContent> get copyWith => __$PostContentCopyWithImpl<_PostContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.contents, contents) || other.contents == contents)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,contents,const DeepCollectionEquality().hash(_images),createdAt,updatedAt);

@override
String toString() {
  return 'PostContent(id: $id, userId: $userId, contents: $contents, images: $images, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PostContentCopyWith<$Res> implements $PostContentCopyWith<$Res> {
  factory _$PostContentCopyWith(_PostContent value, $Res Function(_PostContent) _then) = __$PostContentCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String contents, List<String> images,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$PostContentCopyWithImpl<$Res>
    implements _$PostContentCopyWith<$Res> {
  __$PostContentCopyWithImpl(this._self, this._then);

  final _PostContent _self;
  final $Res Function(_PostContent) _then;

/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? contents = null,Object? images = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PostContent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
