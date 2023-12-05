import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_netflix/widgets/downloaded_card.dart';

class DownloadedEpisodesList extends StatelessWidget {
  const DownloadedEpisodesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          downloadedCard('Cover X', '3', context),
          downloadedCard('Cover Y', '5', context),
          downloadedCard('Cover Z', '1', context),
        ],
      ),
    );
  }
}
