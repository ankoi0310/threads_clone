import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:threads_clone/core/error/failure.dart';
import 'package:threads_clone/core/usecases/usecase.dart';
import 'package:threads_clone/features/feed/domain/entities/post.dart';
import 'package:threads_clone/features/feed/domain/usecases/get_feed_posts.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final GetFeedPosts getFeedPosts;

  FeedBloc(this.getFeedPosts) : super(const FeedState.initial()) {
    on<FeedFetched>(_onFeedFetched);
  }

  Future<void> _onFeedFetched(FeedFetched event, Emitter<FeedState> emit) async {
    emit(const FeedState.loading());
    final result = await getFeedPosts(NoParams());
    result.fold(
      (failure) => emit(FeedState.error(_mapFailureToMessage(failure))),
      (posts) => emit(FeedState.loaded(posts)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.message;
  }
}
