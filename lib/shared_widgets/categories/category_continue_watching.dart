import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/categories/styles/category_name_style.dart';

class CategoryContinueWatching extends StatefulWidget {
  const CategoryContinueWatching(
      {super.key,
      required this.title,
      required this.category,
      required this.showViewAll});

  final String title;
  final Widget category;
  final bool showViewAll;

  @override
  State<CategoryContinueWatching> createState() =>
      _CategoryContinueWatchingState();
}

class _CategoryContinueWatchingState extends State<CategoryContinueWatching> {
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
                widget.title,
                style: categoryNameStyle(),
                overflow: TextOverflow.clip,
              ),
            ),
            if (widget.showViewAll)
              InkWell(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 12,
                    )
                  ],
                ),
              ),
            const SizedBox(width: 20),
          ],
        ),
        widget.category,
      ],
    );
  }
}
