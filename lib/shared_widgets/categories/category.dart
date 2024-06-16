import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';
import 'package:netflix_copy/features/home/data/model/tv_series_model.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.title,
    required this.items,
    this.showViewAll = false,
  });

  final String title;
  final List<TvSeriesModel> items;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              if (showViewAll)
                TextButton(
                  onPressed: () {},
                  child: const Text('View All'),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF736D6D),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            id: item.id,
                            cover: item.cover,
                          ),
                        ),
                      );
                      log('series ID: ${item.id}');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item.poster ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
