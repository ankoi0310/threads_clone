import 'package:fpdart/fpdart.dart';
import 'package:threads_clone/core/error/failure.dart';
import 'package:threads_clone/features/feed/data/datasources/feed_remote_data_source.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';
import 'package:threads_clone/features/feed/domain/repositories/feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  final FeedRemoteDataSource remoteDataSource;

  FeedRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Post>>> getFeedPosts() async {
    try {
      final posts = await remoteDataSource.getFeedPosts();
      return Right(posts.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Post>>> getUserPosts(String userId) async {
    try {
      final posts = await remoteDataSource.getUserPosts(userId);
      return Right(posts.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
