import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_clone/features/feed/presentation/blocs/feed_bloc.dart';
import 'package:threads_clone/features/feed/presentation/widgets/post_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  void initState() {
    super.initState();
    context.read<FeedBloc>().add(const FeedEvent.fetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Threads'), centerTitle: true),
      body: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (posts) => RefreshIndicator(
              onRefresh: () async {
                context.read<FeedBloc>().add(const FeedEvent.fetched());
              },
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return PostWidget(post: post);
                },
              ),
            ),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message),
                  ElevatedButton(
                    onPressed: () => context.read<FeedBloc>().add(const FeedEvent.fetched()),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to compose post
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
