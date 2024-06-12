import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/downloaded_card.dart';

class DownloadedEpisodesList extends StatelessWidget {
  const DownloadedEpisodesList({
    super.key,
    required this.covers,
    required this.counter,
    required this.titles,
  });
  final List<String> counter;
  final List<String> covers;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          covers.length,
          (index) {
            return DownloadedCard(
              episodesCount: counter[index],
              cover: covers[index],
              title: titles[index],
            );
          },
        ),
      ),
    );
  }
}
