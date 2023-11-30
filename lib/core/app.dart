import 'package:flutter/material.dart';
import 'package:netflix_copy/features/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: StartPage(), debugShowCheckedModeBanner: false);
  }
}
