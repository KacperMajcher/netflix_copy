import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/icons/age_limit.dart';

class ProductionSpecyfication extends StatelessWidget {
  const ProductionSpecyfication({
    super.key,
    required this.numberOfSeasons,
    required this.releaseYear,
  });

  final int numberOfSeasons;
  final String releaseYear;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          releaseYear,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 2),
        const AgeLimit(),
        const SizedBox(width: 4),
        Text(
          '$numberOfSeasons seasons',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const Icon(
          Icons.hd_outlined,
          color: Color(0xFF4F4C4C),
          size: 19,
        ),
      ],
    );
  }
}
