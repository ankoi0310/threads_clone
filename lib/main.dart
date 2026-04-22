import 'package:flutter/material.dart';
import 'package:threads_clone/app.dart';
import 'package:threads_clone/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}
