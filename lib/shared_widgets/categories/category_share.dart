import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/categories/base_categoty_widget.dart';

class CategoryShare extends StatelessWidget {
  const CategoryShare({
    super.key,
    required this.title,
    required this.covers,
    this.showViewAll = false,
  });

  final String title;
  final List<String> covers;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return BaseCategoryWidget(
      title: title,
      covers: covers,
      showViewAll: showViewAll,
    );
  }
}
