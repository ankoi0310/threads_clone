import 'package:fpdart/fpdart.dart';
import 'package:threads_clone/core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';
import 'package:threads_clone/features/feed/domain/repositories/feed_repository.dart';

class GetFeedPosts extends UseCase<List<Post>, NoParams> {
  final FeedRepository repository;

  GetFeedPosts(this.repository);

  @override
  Future<Either<Failure, List<Post>>> call(NoParams params) async {
    return await repository.getFeedPosts();
  }
}
