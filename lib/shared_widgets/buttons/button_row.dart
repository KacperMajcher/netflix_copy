import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonRow(String text, IconData icon, Color iconColor) {
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