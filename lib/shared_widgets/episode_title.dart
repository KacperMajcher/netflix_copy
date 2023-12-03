import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EpisodeTitle extends StatelessWidget {
  const EpisodeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'C1:E1 Pilot',
      style: GoogleFonts.openSans(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        letterSpacing: 1,
        fontSize: 13,
      ),
    );
  }
}
