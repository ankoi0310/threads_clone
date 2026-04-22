// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostModel {

 String get id; String get userId; String get username; String? get profileImageUrl; String get content; List<String>? get imageUrls; DateTime get timestamp; int get likesCount; int get repliesCount; int get repostsCount; bool get isLiked; bool get isReposted;
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostModelCopyWith<PostModel> get copyWith => _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  JsonData toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.repostsCount, repostsCount) || other.repostsCount == repostsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isReposted, isReposted) || other.isReposted == isReposted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,username,profileImageUrl,content,const DeepCollectionEquality().hash(imageUrls),timestamp,likesCount,repliesCount,repostsCount,isLiked,isReposted);

@override
String toString() {
  return 'PostModel(id: $id, userId: $userId, username: $username, profileImageUrl: $profileImageUrl, content: $content, imageUrls: $imageUrls, timestamp: $timestamp, likesCount: $likesCount, repliesCount: $repliesCount, repostsCount: $repostsCount, isLiked: $isLiked, isReposted: $isReposted)';
}


}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res>  {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) = _$PostModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String username, String? profileImageUrl, String content, List<String>? imageUrls, DateTime timestamp, int likesCount, int repliesCount, int repostsCount, bool isLiked, bool isReposted
});




}
/// @nodoc
class _$PostModelCopyWithImpl<$Res>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

/// Create a copy of PostModel
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


/// Adds pattern-matching-related methods to [PostModel].
extension PostModelPatterns on PostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostModel value)  $default,){
final _that = this;
switch (_that) {
case _PostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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
case _PostModel() when $default != null:
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
case _PostModel():
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
case _PostModel() when $default != null:
return $default(_that.id,_that.userId,_that.username,_that.profileImageUrl,_that.content,_that.imageUrls,_that.timestamp,_that.likesCount,_that.repliesCount,_that.repostsCount,_that.isLiked,_that.isReposted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostModel extends PostModel {
  const _PostModel({required this.id, required this.userId, required this.username, this.profileImageUrl, required this.content, final  List<String>? imageUrls, required this.timestamp, this.likesCount = 0, this.repliesCount = 0, this.repostsCount = 0, this.isLiked = false, this.isReposted = false}): _imageUrls = imageUrls,super._();
  factory _PostModel.fromJson(JsonData json) => _$PostModelFromJson(json);

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
@override@JsonKey() final  int likesCount;
@override@JsonKey() final  int repliesCount;
@override@JsonKey() final  int repostsCount;
@override@JsonKey() final  bool isLiked;
@override@JsonKey() final  bool isReposted;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostModelCopyWith<_PostModel> get copyWith => __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

@override
JsonData toJson() {
  return _$PostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.repostsCount, repostsCount) || other.repostsCount == repostsCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isReposted, isReposted) || other.isReposted == isReposted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,username,profileImageUrl,content,const DeepCollectionEquality().hash(_imageUrls),timestamp,likesCount,repliesCount,repostsCount,isLiked,isReposted);

@override
String toString() {
  return 'PostModel(id: $id, userId: $userId, username: $username, profileImageUrl: $profileImageUrl, content: $content, imageUrls: $imageUrls, timestamp: $timestamp, likesCount: $likesCount, repliesCount: $repliesCount, repostsCount: $repostsCount, isLiked: $isLiked, isReposted: $isReposted)';
}


}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(_PostModel value, $Res Function(_PostModel) _then) = __$PostModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String username, String? profileImageUrl, String content, List<String>? imageUrls, DateTime timestamp, int likesCount, int repliesCount, int repostsCount, bool isLiked, bool isReposted
});




}
/// @nodoc
class __$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? username = null,Object? profileImageUrl = freezed,Object? content = null,Object? imageUrls = freezed,Object? timestamp = null,Object? likesCount = null,Object? repliesCount = null,Object? repostsCount = null,Object? isLiked = null,Object? isReposted = null,}) {
  return _then(_PostModel(
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
