import 'package:threads_clone/features/feed/data/models/post_model.dart';

abstract class FeedRemoteDataSource {
  Future<List<PostModel>> getFeedPosts();
  Future<List<PostModel>> getUserPosts(String userId);
}

class FeedRemoteDataSourceImpl implements FeedRemoteDataSource {
  @override
  Future<List<PostModel>> getFeedPosts() async {
    // Mock data
    await Future.delayed(const Duration(seconds: 1));
    return [
      PostModel(
        id: '1',
        userId: 'user1',
        username: 'john_doe',
        profileImageUrl: 'https://example.com/avatar1.jpg',
        content: 'Hello, this is my first thread!',
        timestamp: DateTime.now(),
        likesCount: 10,
        repliesCount: 5,
        repostsCount: 2,
        isLiked: false,
        isReposted: false,
      ),
      PostModel(
        id: '2',
        userId: 'user2',
        username: 'jane_smith',
        profileImageUrl: 'https://example.com/avatar2.jpg',
        content: 'Loving the new Threads app! #Threads',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        likesCount: 25,
        repliesCount: 8,
        repostsCount: 3,
        isLiked: true,
        isReposted: false,
      ),
    ];
  }

  @override
  Future<List<PostModel>> getUserPosts(String userId) async {
    // Mock data
    await Future.delayed(const Duration(seconds: 1));
    return [
      PostModel(
        id: '3',
        userId: userId,
        username: 'current_user',
        content: 'My post',
        timestamp: DateTime.now(),
        likesCount: 5,
        repliesCount: 2,
        repostsCount: 1,
        isLiked: false,
        isReposted: false,
      ),
    ];
  }
}
