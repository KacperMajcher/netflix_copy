import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget categorySection(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
          if (showViewAll)
            InkWell(
              onTap: () {},
              child: const Text(
                'View all',
                style: TextStyle(color: Colors.white),
              ),
            ),
          const SizedBox(width: 20),
        ],
      ),
      category,
    ],
  );
}

Widget categorySectionShare(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
          if (showViewAll)
            InkWell(
              onTap: () {},
              child: const Text(
                'View all',
                style: TextStyle(color: Colors.white),
              ),
            ),
          const SizedBox(width: 20),
        ],
      ),
      category,
    ],
  );
}

Widget continueWatching(String title, Widget category,
    {bool showViewAll = false}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
          if (showViewAll)
            InkWell(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 12,
                  )
                ],
              ),
            ),
          const SizedBox(width: 20),
        ],
      ),
      category,
    ],
  );
}

Widget recentlyWatched(
  String title,
  String header,
  String episodeTitle,
  BuildContext context,
) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: categoryNameStyle(),
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            recentlyWatchedCard(header, episodeTitle),
            recentlyWatchedCard(header, episodeTitle),
            recentlyWatchedCard(header, episodeTitle),
            recentlyWatchedCard(header, episodeTitle),
          ],
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
}

InkWell recentlyWatchedCard(String header, String episodeTitle) {
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
                                )),
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

TextStyle categoryNameStyle() {
  return const TextStyle(
      color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600);
}
