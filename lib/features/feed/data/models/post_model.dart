import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:threads_clone/core/shared/utils/typedefs.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String userId,
    required String username,
    required String content,
    required DateTime timestamp,
    String? profileImageUrl,
    List<String>? imageUrls,
    @Default(0) int likesCount,
    @Default(0) int repliesCount,
    @Default(0) int repostsCount,
    @Default(false) bool isLiked,
    @Default(false) bool isReposted,
  }) = _PostModel;

  factory PostModel.fromJson(JsonData json) =>
      _$PostModelFromJson(json);

  const PostModel._();

  Post toEntity() {
    return Post(
      id: id,
      userId: userId,
      username: username,
      profileImageUrl: profileImageUrl,
      content: content,
      imageUrls: imageUrls,
      timestamp: timestamp,
      likesCount: likesCount,
      repliesCount: repliesCount,
      repostsCount: repostsCount,
      isLiked: isLiked,
      isReposted: isReposted,
    );
  }
}
