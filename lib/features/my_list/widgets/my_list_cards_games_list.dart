import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/cards/my_list_game_card.dart';

class GamesCardsList {
  static final List<Widget> myGamesCardsList = <Widget>[
    const MyListGameCard(
      title: 'Mario',
      category: 'Action',
      isNetflixOryginal: true,
    ),
    const MyListGameCard(
      title: 'The forest',
      category: 'Puzzles',
      isNetflixOryginal: true,
    ),
  ];//TODO: Implement api service
}
