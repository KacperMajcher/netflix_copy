import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';

Widget notificationCard(
  String notificationNumber,
  String header,
  String title,
  String date,
  BuildContext context,
) {

  return InkWell(

    onTap: () {

      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DetailsPage()));
    },
    child: SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Card(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.circle, color: Colors.red, size: 10),
                  const SizedBox(width: 6),
                  Container(
                    height: 75,
                    width: 130,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Color(0xFF434141)),
                    child: Center(
                      child: Text(
                        header,
                        style: const TextStyle(color: Color(0xFF736D6D)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notificationNumber,
                          style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          title,
                          style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          date,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: const Color(0xFF535250),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
