import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/pages/details_page_content.dart';
import 'package:netflix_copy/shared_widgets/player.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: const [
          Player(
            cover: 'assets/pages/lucyfer_page.jpg',
            borderRadiusValue: 12,
          ),
          DetailsPageContent(),
        ],
      ),
    );
  }
}
