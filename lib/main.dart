import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_clone/app.dart';
import 'package:threads_clone/features/feed/presentation/blocs/feed_bloc.dart';
import 'package:threads_clone/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<FeedBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}
