import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/episode_card.dart';
import 'package:netflix_copy/shared_widgets/seasons_bar.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SeasonsBar(),
        EpisodeCard(
          episodeNumber: 'Episode 1',
          title: '1. Pilot',
          productionLength: '44 min',
          description:
              'Lucifer Morningstar, bored with life in Hell, moves to Los Angeles where he opens a luxurious nightclub. His tranquil life is disrupted when a witness to one of his crimes asks for his help in solving a murder.',
        ),
        EpisodeCard(
          episodeNumber: 'Episode 2',
          title: '2. Lucifer, Stay. Good Devil.',
          productionLength: '47 min',
          description:
              'Lucifer and Detective Chloe Decker join forces to solve a mysterious murder. Lucifer reveals his otherworldly abilities, surprising Chloe but also drawing her into collaboration.',
        ),
        EpisodeCard(
          episodeNumber: 'Episode 3',
          title: '3. The Would-Be Prince of Darkness',
          productionLength: '47 min',
          description:
              'Lucifer is drawn into an investigation involving kidnapping, leading him into the dangerous underworld of Los Angeles crime. Meanwhile, Chloe learns about Lucifer\'s mysterious past.',
        ),
      ],
    );
  } //TODO: Implement api service
}
