import 'package:fpdart/fpdart.dart';
import 'package:threads_clone/core/error/failure.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';

abstract class FeedRepository {
  Future<Either<Failure, List<Post>>> getFeedPosts();
  Future<Either<Failure, List<Post>>> getUserPosts(String userId);
}
