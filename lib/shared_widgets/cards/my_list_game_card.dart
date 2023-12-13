import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_logo_small.dart';

class MyListGameCard extends StatelessWidget {
  const MyListGameCard({
    super.key,
    required this.title,
    required this.isNetflixOryginal,
    required this.category,
  });

  final String title;
  final String category;
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
                    ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          category,
                          style: GoogleFonts.montserrat(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 89, 84, 84)),
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 40, height: 40),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 79, 76, 76),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: const Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
