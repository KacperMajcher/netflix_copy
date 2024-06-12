import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/trailer_card.dart';

class TrailersAndMore extends StatelessWidget {
  const TrailersAndMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: const [
        TrailerCard(title: 'Season 6 (teaser 1): Lucyfer'),
        TrailerCard(title: 'Season 6 (teaser 2): Lucyfer'),
        TrailerCard(title: 'Season 6 (teaser 3): Lucyfer'),
      ],
    );
  }//TODO: Implement api service
}
