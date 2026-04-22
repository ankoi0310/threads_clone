import 'package:go_router/go_router.dart';
import 'package:threads_clone/features/feed/presentation/pages/feed_page.dart';

class AppRouter {
  static const String feed = '/feed';

  static GoRouter config = GoRouter(
    initialLocation: feed,
    routes: [
      GoRoute(
        path: feed,
        builder: (context, state) => const FeedPage(),
      ),
    ],
  );
}
