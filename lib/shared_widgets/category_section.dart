import 'package:flutter/material.dart';

Widget categorySection(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
          if (showViewAll)
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
      category,
    ],
  );
}

Widget categorySectionShare(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
          if (showViewAll)
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
      category,
    ],
  );
}

TextStyle categoryNameStyle() {
  return const TextStyle(
      color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600);
}