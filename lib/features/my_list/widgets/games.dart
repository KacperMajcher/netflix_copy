import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/my_list/widgets/my_list_cards_games_list.dart';
import 'package:netflix_copy/shared_widgets/buttons/browse_buttom.dart';
import 'package:netflix_copy/shared_widgets/categories/filter_categories_games.dart';

class Games extends StatefulWidget {
  const Games({
    super.key,
  });

  @override
  State<Games> createState() => _GamesState();
}

final cards = GamesCardsList.myGamesCardsList;

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    if (cards.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            const SizedBox(height: 7),
            const GamesFilterCategories(),
            const SizedBox(height: 7),
            ...cards,
          ],
        ),
      );
    } else {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'There is still nothing here',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '''Add items to the list and create a library 
              of titles that interest you.''',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: BrowseButton(
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      text: 'Browse'),
                ),
              ],
            ),
          ));
    }
  }
}
