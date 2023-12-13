import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseButton extends StatelessWidget {
  const BrowseButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor});

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
            minimumSize: const Size(0, 0)),
            
        child: Text(
          text,
          style: GoogleFonts.openSans(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ));
  }
}
