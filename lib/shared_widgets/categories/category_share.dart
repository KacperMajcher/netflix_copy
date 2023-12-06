import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/categories/styles/category_name_style.dart';

class CategoryShare extends StatefulWidget {
  const CategoryShare(
      {super.key,
      required this.title,
      required this.category,
      required this.showViewAll});

  final String title;
  final Widget category;
  final bool showViewAll;

  @override
  State<CategoryShare> createState() => _CategoryShareState();
}

class _CategoryShareState extends State<CategoryShare> {
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
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.white),
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