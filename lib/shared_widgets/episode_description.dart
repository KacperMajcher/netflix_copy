import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EpisodeDescription extends StatelessWidget {
  const EpisodeDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'The bored devil abandons the role of the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins accompanying the lady detective from the homicide department.',
      style: GoogleFonts.openSans(color: Colors.white, fontSize: 12),
    );
  }
}
