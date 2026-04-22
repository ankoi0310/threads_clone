// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Post {

 String get id; String get userId; String get username; String? get profileImageUrl; String get content; List<String>? get imageUrls; DateTime get timestamp; int get likesCount; int get repliesCount; int get repostsCount; bool get isLiked; bool get isReposted;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.repostsCount, repostsCount) || other.repostsCount == repostsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isReposted, isReposted) || other.isReposted == isReposted));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,username,profileImageUrl,content,const DeepCollectionEquality().hash(imageUrls),timestamp,likesCount,repliesCount,repostsCount,isLiked,isReposted);

@override
String toString() {
  return 'Post(id: $id, userId: $userId, username: $username, profileImageUrl: $profileImageUrl, content: $content, imageUrls: $imageUrls, timestamp: $timestamp, likesCount: $likesCount, repliesCount: $repliesCount, repostsCount: $repostsCount, isLiked: $isLiked, isReposted: $isReposted)';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String username, String? profileImageUrl, String content, List<String>? imageUrls, DateTime timestamp, int likesCount, int repliesCount, int repostsCount, bool isLiked, bool isReposted
});




}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? username = null,Object? profileImageUrl = freezed,Object? content = null,Object? imageUrls = freezed,Object? timestamp = null,Object? likesCount = null,Object? repliesCount = null,Object? repostsCount = null,Object? isLiked = null,Object? isReposted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,repliesCount: null == repliesCount ? _self.repliesCount : repliesCount // ignore: cast_nullable_to_non_nullable
as int,repostsCount: null == repostsCount ? _self.repostsCount : repostsCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isReposted: null == isReposted ? _self.isReposted : isReposted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String username,  String? profileImageUrl,  String content,  List<String>? imageUrls,  DateTime timestamp,  int likesCount,  int repliesCount,  int repostsCount,  bool isLiked,  bool isReposted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.userId,_that.username,_that.profileImageUrl,_that.content,_that.imageUrls,_that.timestamp,_that.likesCount,_that.repliesCount,_that.repostsCount,_that.isLiked,_that.isReposted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String username,  String? profileImageUrl,  String content,  List<String>? imageUrls,  DateTime timestamp,  int likesCount,  int repliesCount,  int repostsCount,  bool isLiked,  bool isReposted)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.id,_that.userId,_that.username,_that.profileImageUrl,_that.content,_that.imageUrls,_that.timestamp,_that.likesCount,_that.repliesCount,_that.repostsCount,_that.isLiked,_that.isReposted);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String username,  String? profileImageUrl,  String content,  List<String>? imageUrls,  DateTime timestamp,  int likesCount,  int repliesCount,  int repostsCount,  bool isLiked,  bool isReposted)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.userId,_that.username,_that.profileImageUrl,_that.content,_that.imageUrls,_that.timestamp,_that.likesCount,_that.repliesCount,_that.repostsCount,_that.isLiked,_that.isReposted);case _:
  return null;

}
}

}

/// @nodoc


class _Post implements Post {
  const _Post({required this.id, required this.userId, required this.username, this.profileImageUrl, required this.content, final  List<String>? imageUrls, required this.timestamp, required this.likesCount, required this.repliesCount, required this.repostsCount, required this.isLiked, required this.isReposted}): _imageUrls = imageUrls;
  

@override final  String id;
@override final  String userId;
@override final  String username;
@override final  String? profileImageUrl;
@override final  String content;
 final  List<String>? _imageUrls;
@override List<String>? get imageUrls {
  final value = _imageUrls;
  if (value == null) return null;
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime timestamp;
@override final  int likesCount;
@override final  int repliesCount;
@override final  int repostsCount;
@override final  bool isLiked;
@override final  bool isReposted;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.repostsCount, repostsCount) || other.repostsCount == repostsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isReposted, isReposted) || other.isReposted == isReposted));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,username,profileImageUrl,content,const DeepCollectionEquality().hash(_imageUrls),timestamp,likesCount,repliesCount,repostsCount,isLiked,isReposted);

@override
String toString() {
  return 'Post(id: $id, userId: $userId, username: $username, profileImageUrl: $profileImageUrl, content: $content, imageUrls: $imageUrls, timestamp: $timestamp, likesCount: $likesCount, repliesCount: $repliesCount, repostsCount: $repostsCount, isLiked: $isLiked, isReposted: $isReposted)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String username, String? profileImageUrl, String content, List<String>? imageUrls, DateTime timestamp, int likesCount, int repliesCount, int repostsCount, bool isLiked, bool isReposted
});




}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? username = null,Object? profileImageUrl = freezed,Object? content = null,Object? imageUrls = freezed,Object? timestamp = null,Object? likesCount = null,Object? repliesCount = null,Object? repostsCount = null,Object? isLiked = null,Object? isReposted = null,}) {
  return _then(_Post(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageUrls: freezed == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,repliesCount: null == repliesCount ? _self.repliesCount : repliesCount // ignore: cast_nullable_to_non_nullable
as int,repostsCount: null == repostsCount ? _self.repostsCount : repostsCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isReposted: null == isReposted ? _self.isReposted : isReposted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
