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

 List<String> get message; List<PostContent> get content;@JsonKey(name: 'status_code') int? get statusCode; bool? get status;
/// Create a copy of PostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostResponseCopyWith<PostResponse> get copyWith => _$PostResponseCopyWithImpl<PostResponse>(this as PostResponse, _$identity);

  /// Serializes this PostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostResponse&&const DeepCollectionEquality().equals(other.message, message)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),const DeepCollectionEquality().hash(content),statusCode,status);

@override
String toString() {
  return 'PostResponse(message: $message, content: $content, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class $PostResponseCopyWith<$Res>  {
  factory $PostResponseCopyWith(PostResponse value, $Res Function(PostResponse) _then) = _$PostResponseCopyWithImpl;
@useResult
$Res call({
 List<String> message, List<PostContent> content,@JsonKey(name: 'status_code') int? statusCode, bool? status
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
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? content = null,Object? statusCode = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<PostContent>,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message,  List<PostContent> content, @JsonKey(name: 'status_code')  int? statusCode,  bool? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
return $default(_that.message,_that.content,_that.statusCode,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message,  List<PostContent> content, @JsonKey(name: 'status_code')  int? statusCode,  bool? status)  $default,) {final _that = this;
switch (_that) {
case _PostResponse():
return $default(_that.message,_that.content,_that.statusCode,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message,  List<PostContent> content, @JsonKey(name: 'status_code')  int? statusCode,  bool? status)?  $default,) {final _that = this;
switch (_that) {
case _PostResponse() when $default != null:
return $default(_that.message,_that.content,_that.statusCode,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostResponse implements PostResponse {
  const _PostResponse({required final  List<String> message, required final  List<PostContent> content, @JsonKey(name: 'status_code') this.statusCode, this.status}): _message = message,_content = content;
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

@override@JsonKey(name: 'status_code') final  int? statusCode;
@override final  bool? status;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostResponse&&const DeepCollectionEquality().equals(other._message, _message)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),const DeepCollectionEquality().hash(_content),statusCode,status);

@override
String toString() {
  return 'PostResponse(message: $message, content: $content, statusCode: $statusCode, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PostResponseCopyWith<$Res> implements $PostResponseCopyWith<$Res> {
  factory _$PostResponseCopyWith(_PostResponse value, $Res Function(_PostResponse) _then) = __$PostResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> message, List<PostContent> content,@JsonKey(name: 'status_code') int? statusCode, bool? status
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
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? content = null,Object? statusCode = freezed,Object? status = freezed,}) {
  return _then(_PostResponse(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<PostContent>,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$PostComment {

 String get name; String get content;@JsonKey(name: 'user_avatar') String? get userAvatar;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCommentCopyWith<PostComment> get copyWith => _$PostCommentCopyWithImpl<PostComment>(this as PostComment, _$identity);

  /// Serializes this PostComment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostComment&&(identical(other.name, name) || other.name == name)&&(identical(other.content, content) || other.content == content)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,content,userAvatar,createdAt);

@override
String toString() {
  return 'PostComment(name: $name, content: $content, userAvatar: $userAvatar, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PostCommentCopyWith<$Res>  {
  factory $PostCommentCopyWith(PostComment value, $Res Function(PostComment) _then) = _$PostCommentCopyWithImpl;
@useResult
$Res call({
 String name, String content,@JsonKey(name: 'user_avatar') String? userAvatar,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$PostCommentCopyWithImpl<$Res>
    implements $PostCommentCopyWith<$Res> {
  _$PostCommentCopyWithImpl(this._self, this._then);

  final PostComment _self;
  final $Res Function(PostComment) _then;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? content = null,Object? userAvatar = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostComment].
extension PostCommentPatterns on PostComment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostComment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostComment value)  $default,){
final _that = this;
switch (_that) {
case _PostComment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostComment value)?  $default,){
final _that = this;
switch (_that) {
case _PostComment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String content, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that.name,_that.content,_that.userAvatar,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String content, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PostComment():
return $default(_that.name,_that.content,_that.userAvatar,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String content, @JsonKey(name: 'user_avatar')  String? userAvatar, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PostComment() when $default != null:
return $default(_that.name,_that.content,_that.userAvatar,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostComment implements PostComment {
  const _PostComment({required this.name, required this.content, @JsonKey(name: 'user_avatar') this.userAvatar, @JsonKey(name: 'created_at') this.createdAt});
  factory _PostComment.fromJson(Map<String, dynamic> json) => _$PostCommentFromJson(json);

@override final  String name;
@override final  String content;
@override@JsonKey(name: 'user_avatar') final  String? userAvatar;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCommentCopyWith<_PostComment> get copyWith => __$PostCommentCopyWithImpl<_PostComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostCommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostComment&&(identical(other.name, name) || other.name == name)&&(identical(other.content, content) || other.content == content)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,content,userAvatar,createdAt);

@override
String toString() {
  return 'PostComment(name: $name, content: $content, userAvatar: $userAvatar, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PostCommentCopyWith<$Res> implements $PostCommentCopyWith<$Res> {
  factory _$PostCommentCopyWith(_PostComment value, $Res Function(_PostComment) _then) = __$PostCommentCopyWithImpl;
@override @useResult
$Res call({
 String name, String content,@JsonKey(name: 'user_avatar') String? userAvatar,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$PostCommentCopyWithImpl<$Res>
    implements _$PostCommentCopyWith<$Res> {
  __$PostCommentCopyWithImpl(this._self, this._then);

  final _PostComment _self;
  final $Res Function(_PostComment) _then;

/// Create a copy of PostComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? content = null,Object? userAvatar = freezed,Object? createdAt = freezed,}) {
  return _then(_PostComment(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PostContent {

 int get id;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'user_name') String? get userName;@JsonKey(name: 'nick_name') String? get nickName;@JsonKey(name: 'user_avatar') String? get userAvatar; String get contents; List<String> get images;@JsonKey(name: 'is_liked') int get isLiked;@JsonKey(name: 'total_comment') int get totalComment;@JsonKey(name: 'total_liked') int get totalLiked;@JsonKey(name: 'liked') List<String> get liked;@JsonKey(name: 'comments') List<PostComment> get comments;@JsonKey(name: 'time_create') String? get timeCreate;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of PostContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostContentCopyWith<PostContent> get copyWith => _$PostContentCopyWithImpl<PostContent>(this as PostContent, _$identity);

  /// Serializes this PostContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.contents, contents) || other.contents == contents)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.totalComment, totalComment) || other.totalComment == totalComment)&&(identical(other.totalLiked, totalLiked) || other.totalLiked == totalLiked)&&const DeepCollectionEquality().equals(other.liked, liked)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.timeCreate, timeCreate) || other.timeCreate == timeCreate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,nickName,userAvatar,contents,const DeepCollectionEquality().hash(images),isLiked,totalComment,totalLiked,const DeepCollectionEquality().hash(liked),const DeepCollectionEquality().hash(comments),timeCreate,createdAt,updatedAt);

@override
String toString() {
  return 'PostContent(id: $id, userId: $userId, userName: $userName, nickName: $nickName, userAvatar: $userAvatar, contents: $contents, images: $images, isLiked: $isLiked, totalComment: $totalComment, totalLiked: $totalLiked, liked: $liked, comments: $comments, timeCreate: $timeCreate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PostContentCopyWith<$Res>  {
  factory $PostContentCopyWith(PostContent value, $Res Function(PostContent) _then) = _$PostContentCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'user_name') String? userName,@JsonKey(name: 'nick_name') String? nickName,@JsonKey(name: 'user_avatar') String? userAvatar, String contents, List<String> images,@JsonKey(name: 'is_liked') int isLiked,@JsonKey(name: 'total_comment') int totalComment,@JsonKey(name: 'total_liked') int totalLiked,@JsonKey(name: 'liked') List<String> liked,@JsonKey(name: 'comments') List<PostComment> comments,@JsonKey(name: 'time_create') String? timeCreate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? userName = freezed,Object? nickName = freezed,Object? userAvatar = freezed,Object? contents = null,Object? images = null,Object? isLiked = null,Object? totalComment = null,Object? totalLiked = null,Object? liked = null,Object? comments = null,Object? timeCreate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as int,totalComment: null == totalComment ? _self.totalComment : totalComment // ignore: cast_nullable_to_non_nullable
as int,totalLiked: null == totalLiked ? _self.totalLiked : totalLiked // ignore: cast_nullable_to_non_nullable
as int,liked: null == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<PostComment>,timeCreate: freezed == timeCreate ? _self.timeCreate : timeCreate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'user_avatar')  String? userAvatar,  String contents,  List<String> images, @JsonKey(name: 'is_liked')  int isLiked, @JsonKey(name: 'total_comment')  int totalComment, @JsonKey(name: 'total_liked')  int totalLiked, @JsonKey(name: 'liked')  List<String> liked, @JsonKey(name: 'comments')  List<PostComment> comments, @JsonKey(name: 'time_create')  String? timeCreate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostContent() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.nickName,_that.userAvatar,_that.contents,_that.images,_that.isLiked,_that.totalComment,_that.totalLiked,_that.liked,_that.comments,_that.timeCreate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'user_avatar')  String? userAvatar,  String contents,  List<String> images, @JsonKey(name: 'is_liked')  int isLiked, @JsonKey(name: 'total_comment')  int totalComment, @JsonKey(name: 'total_liked')  int totalLiked, @JsonKey(name: 'liked')  List<String> liked, @JsonKey(name: 'comments')  List<PostComment> comments, @JsonKey(name: 'time_create')  String? timeCreate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PostContent():
return $default(_that.id,_that.userId,_that.userName,_that.nickName,_that.userAvatar,_that.contents,_that.images,_that.isLiked,_that.totalComment,_that.totalLiked,_that.liked,_that.comments,_that.timeCreate,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'user_name')  String? userName, @JsonKey(name: 'nick_name')  String? nickName, @JsonKey(name: 'user_avatar')  String? userAvatar,  String contents,  List<String> images, @JsonKey(name: 'is_liked')  int isLiked, @JsonKey(name: 'total_comment')  int totalComment, @JsonKey(name: 'total_liked')  int totalLiked, @JsonKey(name: 'liked')  List<String> liked, @JsonKey(name: 'comments')  List<PostComment> comments, @JsonKey(name: 'time_create')  String? timeCreate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PostContent() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.nickName,_that.userAvatar,_that.contents,_that.images,_that.isLiked,_that.totalComment,_that.totalLiked,_that.liked,_that.comments,_that.timeCreate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostContent implements PostContent {
  const _PostContent({required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'user_name') this.userName, @JsonKey(name: 'nick_name') this.nickName, @JsonKey(name: 'user_avatar') this.userAvatar, required this.contents, required final  List<String> images, @JsonKey(name: 'is_liked') this.isLiked = 0, @JsonKey(name: 'total_comment') this.totalComment = 0, @JsonKey(name: 'total_liked') this.totalLiked = 0, @JsonKey(name: 'liked') final  List<String> liked = const [], @JsonKey(name: 'comments') final  List<PostComment> comments = const [], @JsonKey(name: 'time_create') this.timeCreate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _images = images,_liked = liked,_comments = comments;
  factory _PostContent.fromJson(Map<String, dynamic> json) => _$PostContentFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'user_name') final  String? userName;
@override@JsonKey(name: 'nick_name') final  String? nickName;
@override@JsonKey(name: 'user_avatar') final  String? userAvatar;
@override final  String contents;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: 'is_liked') final  int isLiked;
@override@JsonKey(name: 'total_comment') final  int totalComment;
@override@JsonKey(name: 'total_liked') final  int totalLiked;
 final  List<String> _liked;
@override@JsonKey(name: 'liked') List<String> get liked {
  if (_liked is EqualUnmodifiableListView) return _liked;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liked);
}

 final  List<PostComment> _comments;
@override@JsonKey(name: 'comments') List<PostComment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override@JsonKey(name: 'time_create') final  String? timeCreate;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostContent&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.userAvatar, userAvatar) || other.userAvatar == userAvatar)&&(identical(other.contents, contents) || other.contents == contents)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.totalComment, totalComment) || other.totalComment == totalComment)&&(identical(other.totalLiked, totalLiked) || other.totalLiked == totalLiked)&&const DeepCollectionEquality().equals(other._liked, _liked)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.timeCreate, timeCreate) || other.timeCreate == timeCreate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,nickName,userAvatar,contents,const DeepCollectionEquality().hash(_images),isLiked,totalComment,totalLiked,const DeepCollectionEquality().hash(_liked),const DeepCollectionEquality().hash(_comments),timeCreate,createdAt,updatedAt);

@override
String toString() {
  return 'PostContent(id: $id, userId: $userId, userName: $userName, nickName: $nickName, userAvatar: $userAvatar, contents: $contents, images: $images, isLiked: $isLiked, totalComment: $totalComment, totalLiked: $totalLiked, liked: $liked, comments: $comments, timeCreate: $timeCreate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PostContentCopyWith<$Res> implements $PostContentCopyWith<$Res> {
  factory _$PostContentCopyWith(_PostContent value, $Res Function(_PostContent) _then) = __$PostContentCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'user_name') String? userName,@JsonKey(name: 'nick_name') String? nickName,@JsonKey(name: 'user_avatar') String? userAvatar, String contents, List<String> images,@JsonKey(name: 'is_liked') int isLiked,@JsonKey(name: 'total_comment') int totalComment,@JsonKey(name: 'total_liked') int totalLiked,@JsonKey(name: 'liked') List<String> liked,@JsonKey(name: 'comments') List<PostComment> comments,@JsonKey(name: 'time_create') String? timeCreate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? userName = freezed,Object? nickName = freezed,Object? userAvatar = freezed,Object? contents = null,Object? images = null,Object? isLiked = null,Object? totalComment = null,Object? totalLiked = null,Object? liked = null,Object? comments = null,Object? timeCreate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PostContent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String?,userAvatar: freezed == userAvatar ? _self.userAvatar : userAvatar // ignore: cast_nullable_to_non_nullable
as String?,contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as int,totalComment: null == totalComment ? _self.totalComment : totalComment // ignore: cast_nullable_to_non_nullable
as int,totalLiked: null == totalLiked ? _self.totalLiked : totalLiked // ignore: cast_nullable_to_non_nullable
as int,liked: null == liked ? _self._liked : liked // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<PostComment>,timeCreate: freezed == timeCreate ? _self.timeCreate : timeCreate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
