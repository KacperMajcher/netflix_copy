import 'package:flutter/material.dart';

Widget categorySection(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        children: [
          const SizedBox(width: 10),
          Text(
            title,
            style: categoryNameStyle(),
          ),
          const Spacer(),
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
    color: Colors.white,
    fontSize: 20,
  );
}
