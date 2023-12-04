import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class MyNetflix extends StatelessWidget {
  const MyNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My Netflix'),
      ),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
