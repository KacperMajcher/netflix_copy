import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/downloaded_card.dart';

class DownloadedEpisodesList extends StatelessWidget {
  const DownloadedEpisodesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DownloadedCard(header: 'Cover X', episodesCount: '3'),
          DownloadedCard(header: 'Cover Y', episodesCount: '5'),
          DownloadedCard(header: 'Cover Z', episodesCount: '1'),
        ],
      ),
    );
  }
}
