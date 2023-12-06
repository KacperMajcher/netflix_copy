import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.cover});

  final String cover;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      semanticContainer: false,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 115,
          height: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cover),
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}