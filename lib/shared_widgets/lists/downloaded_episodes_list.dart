import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/downloaded_card.dart';

class DownloadedEpisodesList extends StatelessWidget {
  const DownloadedEpisodesList({
    super.key,
    required this.covers,
  });
  final List<String> covers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          covers.length,
          (index) {
            return DownloadedCard(
              cover: covers[index],
            );
          },
        ),
      ),
    );
  }
}
