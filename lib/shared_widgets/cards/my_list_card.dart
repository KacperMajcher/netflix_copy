import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_logo_small.dart';

class MyListCard extends StatelessWidget {
  const MyListCard({
    super.key,
    required this.episodeNumber,
    required this.title,
    required this.isNetflixOryginal,
  });

  final String episodeNumber;
  final String title;
  final bool isNetflixOryginal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //navigation to detailsPage
      },
      child: SizedBox(
        child: Card(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
              Row(
                children: [
                  if (isNetflixOryginal)
                    Stack(
                      children: [
                        Container(
                          height: 73,
                          width: 125,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/other/test.png')),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                              child: Text(
                            episodeNumber,
                            style: const TextStyle(color: Color(0xFF736D6D)),
                          )),
                        ),
                        const Positioned(
                            top: 2, left: 1, child: NetflixLogoSmall(size: 20)),
                      ],
                    ),
                  if (isNetflixOryginal == false)
                    Container(
                      height: 73,
                      width: 125,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/other/test.png')),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        episodeNumber,
                        style: const TextStyle(color: Color(0xFF736D6D)),
                      )),
                    ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                              fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_outline,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
