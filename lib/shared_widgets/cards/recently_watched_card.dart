import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentlyWatchedCard extends StatelessWidget {
  const RecentlyWatchedCard(
      {super.key, required this.header, required this.episodeTitle});

  final String header;
  final String episodeTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 233,
        child: Card(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(children: [
                    Container(
                      height: 135,
                      width: 225,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          color: Color(0xFF434141)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            header,
                            style: const TextStyle(color: Color(0xFF736D6D)),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 6,
                      right: 0,
                      child: Container(
                        color: Colors.transparent,
                        height: 35,
                        width: 96,
                        child: Positioned(
                          bottom: 1,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Image(
                                  image: AssetImage('assets/other/share.png'),
                                  fit: BoxFit.fill,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  size: 23,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 225,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    color: Color(0xFF1B1917)),
                child: Center(
                    child: Text(
                  episodeTitle,
                  style: GoogleFonts.openSans(color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
