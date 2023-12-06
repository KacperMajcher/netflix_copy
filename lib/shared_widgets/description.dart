import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description(
      {super.key,
      required this.description,
      required this.textColor,
      required this.fontSize});

  final String description;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 3,
      style: GoogleFonts.openSans(
        color: textColor,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
