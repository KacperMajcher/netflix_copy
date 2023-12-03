import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/age_limit.dart';

class ProductionSpecyfication extends StatelessWidget {
  const ProductionSpecyfication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '2021',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 2),
        ageLimit(),
        const SizedBox(width: 4),
        const Text(
          '6 seasons',
          style: TextStyle(
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
