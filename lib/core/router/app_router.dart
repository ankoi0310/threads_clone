import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:threads_clone/core/shared/layout/main_shell_page.dart';
import 'package:threads_clone/features/activity/presentation/pages/activity_page.dart';
import 'package:threads_clone/features/feed/presentation/pages/feed_page.dart';
import 'package:threads_clone/features/message/presentation/pages/message_page.dart';
import 'package:threads_clone/features/user/presentation/pages/personal_page.dart';

class AppRouter {
  static const String feed = '/feed';
  static const String message = '/message';
  static const String activity = '/activity';
  static const String me = '/me';
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>();

final config = GoRouter(
  initialLocation: AppRouter.feed,
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // MainShellPage là Widget chứa BottomNavigationBar mà chúng ta đã nói ở trên
        return MainShellPage(navigationShell: navigationShell);
      },
      branches: [
        // Nhánh Feed
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.feed,
              builder: (context, state) => const FeedPage(),
            ),
          ],
        ),
        // Nhánh Message
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.message,
              builder: (context, state) => const MessagePage(),
            ),
          ],
        ),
        // Nhánh Activity
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.activity,
              builder: (context, state) => const ActivityPage(),
            ),
          ],
        ),
        // Nhánh Me (Profile)
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.me,
              builder: (context, state) => const PersonalPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
