import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/shared_widgets/seasons_bar.dart';

class Episodes extends StatelessWidget {
  const Episodes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SeasonsBar(),
        SizedBox(
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
                      child: const Center(
                          child: Text(
                        'Episode 1',
                        style: TextStyle(color: Color(0xFF736D6D)),
                      )),
                    ),
                    const SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Pilot',
                          style: GoogleFonts.openSans(
                              fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          '44 min',
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: const Color(0xFF535250),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
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
                  child: Text(
                      'Lucifer Morningstar, bored with life in Hell, moves to Los Angeles where he opens a luxurious nightclub. His tranquil life is disrupted when a witness to one of his crimes asks for his help in solving a murder.',
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: const Color(0xFF918F8C),
                      )),
                )
              ],
            ),
          ),
        ),
        SizedBox(
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
                      child: const Center(
                          child: Text(
                        'Episode 2',
                        style: TextStyle(color: Color(0xFF736D6D)),
                      )),
                    ),
                    const SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2. Lucifer, Stay. Good Devil.',
                          style: GoogleFonts.openSans(
                              fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          '47 min',
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: const Color(0xFF535250),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
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
                  child: Text(
                      'Lucifer and Detective Chloe Decker join forces to solve a mysterious murder. Lucifer reveals his otherworldly abilities, surprising Chloe but also drawing her into collaboration.',
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: const Color(0xFF918F8C),
                      )),
                )
              ],
            ),
          ),
        ),
        SizedBox(
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
                      child: const Center(
                          child: Text(
                        'Episode 3',
                        style: TextStyle(color: Color(0xFF736D6D)),
                      )),
                    ),
                    const SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3. The Would-Be Prince of Darkness',
                          style: GoogleFonts.openSans(
                              fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          '47 min',
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: const Color(0xFF535250),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
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
                  child: Text(
                      'Lucifer is drawn into an investigation involving kidnapping, leading him into the dangerous underworld of Los Angeles crime. Meanwhile, Chloe learns about Lucifer\'s mysterious past.',
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: const Color(0xFF918F8C),
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
