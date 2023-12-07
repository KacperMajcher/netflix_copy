import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_list/pages/my_list_page.dart';
import 'package:netflix_copy/shared_widgets/categories/styles/category_name_style.dart';

class Category extends StatefulWidget {
  const Category(
      {super.key,
      required this.title,
      required this.category,
      required this.showViewAll});

  final String title;
  final Widget category;
  final bool showViewAll;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyList()));
                },
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
