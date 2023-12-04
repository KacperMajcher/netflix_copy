import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/episode_card.dart';
import 'package:netflix_copy/shared_widgets/seasons_bar.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SeasonsBar(),
        episodeCard(
          'Episode 1',
          '1. Pilot',
          '44 min',
          'Lucifer Morningstar, bored with life in Hell, moves to Los Angeles where he opens a luxurious nightclub. His tranquil life is disrupted when a witness to one of his crimes asks for his help in solving a murder.',
        ),
        episodeCard(
          'Episode 2',
          '2. Lucifer, Stay. Good Devil.',
          '47 min',
          'Lucifer and Detective Chloe Decker join forces to solve a mysterious murder. Lucifer reveals his otherworldly abilities, surprising Chloe but also drawing her into collaboration.',
        ),
        episodeCard(
          'Episode 3',
          '3. The Would-Be Prince of Darkness',
          '47 min',
          'Lucifer is drawn into an investigation involving kidnapping, leading him into the dangerous underworld of Los Angeles crime. Meanwhile, Chloe learns about Lucifer\'s mysterious past.',
        ),
      ],
    );
  }
}
