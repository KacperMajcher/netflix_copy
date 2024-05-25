import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notificationTitle,
    required this.content,
    required this.date,
    required this.cover,
  });

  final String notificationTitle;
  final String content;
  final String date;
  final String cover;

  @override
  Widget build(BuildContext context) {
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
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Container(
                        height: 75,
                        width: 130,
                        color: const Color(0xFF434141),
                        child: Image.asset(
                          cover,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notificationTitle,
                            style: GoogleFonts.openSans(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            content,
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
}
