import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class NewAndPopularPage extends StatelessWidget {
  const NewAndPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('New and popular'),
      ),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
