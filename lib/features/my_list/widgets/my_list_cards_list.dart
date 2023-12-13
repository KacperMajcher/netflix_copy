import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/my_list_card.dart';

class MoviesSeriesAndProgramsCardsList {
  static final List<Widget> myMoviesSeriesAndProgramsCardsList = <Widget>[
    const MyListCard(
      title: 'Title',
      isNetflixOryginal: true,
    ),
    const MyListCard(
      title: 'Title',
      isNetflixOryginal: false,
    ),
  ];
}
