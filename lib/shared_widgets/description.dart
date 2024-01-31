import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overview extends StatelessWidget {
  const Overview(
      {super.key,
      required this.overview,
      required this.textColor,
      required this.fontSize});

  final String overview;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      overview,
      maxLines: 3,
      style: GoogleFonts.openSans(
        color: textColor,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
