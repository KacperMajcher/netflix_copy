import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/movie_card.dart';

Widget categoryRow(List<String> covers) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children:
          covers.map((cover) => movieCard('assets/covers/$cover')).toList(),
    ),
  );
}

Widget categoryRowShare(List<String> covers) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: covers
          .map((cover) => movieCardShare('assets/covers/$cover'))
          .toList(),
    ),
  );
}

Widget categoryRowContinueWatching(List<String> covers) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: covers
          .map((cover) => movieCardContinueWatching('assets/covers/$cover'))
          .toList(),
    ),
  );
}
