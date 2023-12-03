import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class CastList extends StatelessWidget {
  const CastList({super.key});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'Cast: Tom Ellis, Lauren German, Lesley-Ann Brandt, D.B. Woodside, Rachael Harris, Kevin Alejandro, Aimee Garcia, Scarlett Estevez',
      style: GoogleFonts.openSans(
        color: const Color(0xFF564E4E),
        fontSize: 12,
      ),
      trimLines: 1,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'more',
      colorClickableText: const Color(0xFF323030),
      trimExpandedText: '...less',
    );
  }
}
