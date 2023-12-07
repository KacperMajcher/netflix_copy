import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SortByColumn extends StatelessWidget {
  const SortByColumn({
    super.key, required this.sortBy,
  });

  final String sortBy;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sort by',
            style: GoogleFonts.montserrat(
                color: const Color(0xFF9C9A95),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                sortBy,
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
