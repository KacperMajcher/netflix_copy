import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/icons/age_limit.dart';

class ProductionSpecyfication extends StatelessWidget {
  const ProductionSpecyfication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          '2021',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(width: 2),
        AgeLimit(),
        SizedBox(width: 4),
        Text(
          '6 seasons',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Icon(
          Icons.hd_outlined,
          color: Color(0xFF4F4C4C),
          size: 19,
        ),
      ],
    );
  }
}
