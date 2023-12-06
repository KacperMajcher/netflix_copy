import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/movie_card.dart';

class MoreLikely extends StatelessWidget {
  const MoreLikely({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/lacasadepapel_cover.jpg',
              ),
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/caos_cover.jpg',
              ),
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/13reasonswhy_cover.jpg',
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/breakingbad_cover.jpg',
              ),
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/prisonbreak_cover.jpg',
              ),
              Expanded(child: SizedBox()),
              MovieCard(
                cover: 'assets/covers/you_cover.jpg',
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
