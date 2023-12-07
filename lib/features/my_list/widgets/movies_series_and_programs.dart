import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_list/widgets/my_list_cards_list.dart';
import 'package:netflix_copy/shared_widgets/buttons/sort_by_column.dart';
import 'package:netflix_copy/shared_widgets/categories/filter_categories.dart';

class MoviesSeriesAndPrograms extends StatefulWidget {
  const MoviesSeriesAndPrograms({
    super.key,
  });

  @override
  State<MoviesSeriesAndPrograms> createState() =>
      _MoviesSeriesAndProgramsState();
}

class _MoviesSeriesAndProgramsState extends State<MoviesSeriesAndPrograms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          const SizedBox(height: 7),
          const FilterCategories(),
          const SizedBox(height: 7),
          const SortByColumn(sortBy: 'Best recomendation'),
          const SizedBox(height: 7),
          ...MyListCardsList.myListCardsList,
        ],
      ),
    );
  }
}
