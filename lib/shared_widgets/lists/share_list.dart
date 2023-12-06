import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/share_card.dart';

class ShareList extends StatelessWidget {
  const ShareList(this.covers, {super.key});

  final List<String> covers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: covers
            .map((cover) => ShareCard(cover: 'assets/covers/$cover'))
            .toList(),
      ),
    );
  }
}