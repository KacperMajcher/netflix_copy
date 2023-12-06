import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNetflixButtons extends StatelessWidget {
  const MyNetflixButtons(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor,
      required this.backgroundColor,
      required this.iconType});

  final String text;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final IconData iconType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: backgroundColor,
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: GoogleFonts.openSans(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Icon(
          iconType,
          color: iconColor,
          size: 15,
        ),
      ],
    );
  }
}
