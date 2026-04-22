import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required String userId,
    required String username,
    required String content,
    required DateTime timestamp,
    required int likesCount,
    required int repliesCount,
    required int repostsCount,
    required bool isLiked,
    required bool isReposted,
    String? profileImageUrl,
    List<String>? imageUrls,
  }) = _Post;
}
