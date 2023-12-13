import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/my_list/widgets/my_list_cards_list.dart';
import 'package:netflix_copy/shared_widgets/buttons/browse_buttom.dart';
import 'package:netflix_copy/shared_widgets/buttons/sort_by_column.dart';
import 'package:netflix_copy/shared_widgets/categories/filter_categories_movies.dart';

class MoviesSeriesAndPrograms extends StatefulWidget {
  const MoviesSeriesAndPrograms({
    super.key,
  });

  @override
  State<MoviesSeriesAndPrograms> createState() =>
      _MoviesSeriesAndProgramsState();
}

final cards =
    MoviesSeriesAndProgramsCardsList.myMoviesSeriesAndProgramsCardsList;

class _MoviesSeriesAndProgramsState extends State<MoviesSeriesAndPrograms> {
  @override
  Widget build(BuildContext context) {
    if (cards.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            const SizedBox(height: 7),
            const MoviesFilterCategories(),
            const SizedBox(height: 7),
            const SortByColumn(sortBy: 'Best recommendation'),
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
