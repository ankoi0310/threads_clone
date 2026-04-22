import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:threads_clone/core/shared/extensions/build_context_extension.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: post.profileImageUrl != null
                    ? CachedNetworkImageProvider(
                        post.profileImageUrl!,
                      )
                    : null,
                child: post.profileImageUrl == null
                    ? Text(post.username[0].toUpperCase())
                    : null,
              ),
              const SizedBox(width: 12),
              Text(
                post.username,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                _formatTimestamp(post.timestamp),
                style: TextStyle(
                  color: context.colors.secondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(post.content, style: context.textTheme.bodyMedium),
          if (post.imageUrls != null && post.imageUrls!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: CachedNetworkImage(
                imageUrl: post.imageUrls!.first,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
              ),
            ),
          const SizedBox(height: 12),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  post.isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: post.isLiked
                      ? context.colors.error
                      : context.colors.onSurface,
                ),
                onPressed: () {
                  // TODO: Implement like
                },
              ),
              Text(
                '${post.likesCount}',
                style: context.textTheme.bodySmall,
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: context.colors.onSurface,
                ),
                onPressed: () {
                  // TODO: Implement reply
                },
              ),
              Text(
                '${post.repliesCount}',
                style: context.textTheme.bodySmall,
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: context.colors.onSurface,
                ),
                onPressed: () {
                  // TODO: Implement repost
                },
              ),
              Text(
                '${post.repostsCount}',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m';
    } else {
      return 'now';
    }
  }
}
