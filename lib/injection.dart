import 'package:get_it/get_it.dart';
import 'package:threads_clone/core/network/dio_client.dart';
import 'package:threads_clone/features/feed/data/datasources/feed_remote_data_source.dart';
import 'package:threads_clone/features/feed/data/repositories/feed_repository_impl.dart';
import 'package:threads_clone/features/feed/domain/repositories/feed_repository.dart';
import 'package:threads_clone/features/feed/domain/usecases/get_feed_posts.dart';
import 'package:threads_clone/features/feed/presentation/blocs/feed_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl
    ..registerLazySingleton(() => DioClient().dio)
    // Feed
    // Data sources
    ..registerLazySingleton<FeedRemoteDataSource>(
      FeedRemoteDataSourceImpl.new,
    )
    // Repositories
    ..registerLazySingleton<FeedRepository>(
      () => FeedRepositoryImpl(sl()),
    )
    // Use cases
    ..registerLazySingleton(() => GetFeedPosts(sl()))
    // Blocs
    ..registerFactory(() => FeedBloc(sl()));
}
