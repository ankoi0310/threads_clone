import 'package:flutter/material.dart';
import 'package:threads_clone/core/theme/theme.dart';
import 'package:threads_clone/core/utils/create_text_theme.dart';
import 'package:threads_clone/features/feed/presentation/pages/feed_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(
      context,
    ).platformDispatcher.platformBrightness;

    final textTheme = createTextTheme(context, 'Manrope', 'Mitr');
    final theme = AppTheme(textTheme);
    return MaterialApp(
      title: 'Threads Clone',
      theme: brightness == Brightness.light
          ? theme.light()
          : theme.dark(),
      home: const FeedPage(),
    );
  }
}
