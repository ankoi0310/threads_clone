// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(JsonData json) => _PostModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  username: json['username'] as String,
  profileImageUrl: json['profileImageUrl'] as String?,
  content: json['content'] as String,
  imageUrls: (json['imageUrls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  timestamp: DateTime.parse(json['timestamp'] as String),
  likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
  repliesCount: (json['repliesCount'] as num?)?.toInt() ?? 0,
  repostsCount: (json['repostsCount'] as num?)?.toInt() ?? 0,
  isLiked: json['isLiked'] as bool? ?? false,
  isReposted: json['isReposted'] as bool? ?? false,
);

JsonData _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'profileImageUrl': instance.profileImageUrl,
      'content': instance.content,
      'imageUrls': instance.imageUrls,
      'timestamp': instance.timestamp.toIso8601String(),
      'likesCount': instance.likesCount,
      'repliesCount': instance.repliesCount,
      'repostsCount': instance.repostsCount,
      'isLiked': instance.isLiked,
      'isReposted': instance.isReposted,
    };
