import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/continue_watching_card.dart';

class ContinueWatchingList extends StatelessWidget {
  const ContinueWatchingList(this.covers, {super.key});

  final List<String> covers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: covers
            .map((cover) => ContinueWatchingCard(cover: 'assets/covers/$cover'))
            .toList(),
      ),
    );
  }
}
