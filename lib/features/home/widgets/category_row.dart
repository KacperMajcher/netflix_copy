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