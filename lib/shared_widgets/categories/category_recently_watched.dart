import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/categories/styles/category_name_style.dart';
import 'package:netflix_copy/shared_widgets/cards/recently_watched_card.dart';

class CategoryRecentlyWatched extends StatelessWidget {
  const CategoryRecentlyWatched({
    super.key,
    required this.title,
    required this.covers,
    required this.titles,
  });

  final String title;
  final List<String> covers;
  final List<String> titles;

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
            children: List.generate(covers.length, (index) {
              return RecentlyWatchedCard(
                title: titles[index],
                cover: covers[index],
              );
            }),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
