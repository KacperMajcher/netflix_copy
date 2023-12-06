import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/categories/styles/category_name_style.dart';
import 'package:netflix_copy/shared_widgets/cards/recently_watched_card.dart';

class CategoryRecentlyWatched extends StatelessWidget {
  const CategoryRecentlyWatched({
    super.key,
    required this.title,
    required this.header,
    required this.episodeTitle,
  });

  final String title;
  final String header;
  final String episodeTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: categoryNameStyle(),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecentlyWatchedCard(header: header, episodeTitle: episodeTitle),
              RecentlyWatchedCard(header: header, episodeTitle: episodeTitle),
              RecentlyWatchedCard(header: header, episodeTitle: episodeTitle),
              RecentlyWatchedCard(header: header, episodeTitle: episodeTitle),
            ],
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
