import 'package:flutter/material.dart';

class ProductionTitle extends StatelessWidget {
  const ProductionTitle({
    super.key,
    required this.title,
    required this.fontSize,
  });

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
