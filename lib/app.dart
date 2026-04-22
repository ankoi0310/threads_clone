import 'package:flutter/material.dart';
import 'package:threads_clone/core/router/app_router.dart';
import 'package:threads_clone/core/shared/utils/create_text_theme.dart';
import 'package:threads_clone/core/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(
      context,
    ).platformDispatcher.platformBrightness;

    final textTheme = createTextTheme(context, 'Manrope', 'Mitr');
    final theme = AppTheme(textTheme);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Threads Clone',
      theme: theme.dark(),
      routerConfig: AppRouter.config,
    );
  }
}
