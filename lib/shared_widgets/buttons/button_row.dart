import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor});

  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 23, color: iconColor),
        const SizedBox(width: 3),
        Text(
          text,
          style: GoogleFonts.openSans(
            color: iconColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 3),
      ],
    );
  }
}
