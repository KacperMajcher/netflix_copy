import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/movie_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList(this.covers, {super.key});

  final List<String> covers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: covers
            .map(
              (cover) => MovieCard(
                cover: cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
