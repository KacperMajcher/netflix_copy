import 'package:flutter/material.dart';
import 'package:netflix_copy/core/config.dart';
import 'package:netflix_copy/features/start/pages/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StartPage(),
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
    );
  }
}
