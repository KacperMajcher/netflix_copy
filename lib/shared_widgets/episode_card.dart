import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget episodeCard(String episodeNumber, String title, String productionLength,
    String description) {
  return SizedBox(
    child: Card(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 2),
          Row(
            children: [
              const SizedBox(width: 2),
              Container(
                height: 70,
                width: 120,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Color(0xFF434141)),
                child: Center(
                    child: Text(
                  episodeNumber,
                  style: const TextStyle(color: Color(0xFF736D6D)),
                )),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.openSans(
                          fontSize: 13, color: Colors.white),
                    ),
                    Text(
                      productionLength,
                      style: GoogleFonts.openSans(
                        fontSize: 11,
                        color: const Color(0xFF535250),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.file_download_outlined,
                    size: 30,
                    color: Colors.white,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(description,
                style: GoogleFonts.openSans(
                  fontSize: 13,
                  color: const Color(0xFF918F8C),
                )),
          )
        ],
      ),
    ),
  );
}
