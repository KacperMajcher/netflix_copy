import 'package:flutter/material.dart';

class ProductionTitle extends StatelessWidget {
  const ProductionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lucyfer',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
    );
  }
}
