import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          player(),
          notes(),
          bookmarks(),
          seasons(),
          cards(),
        ],
      ),
    );
  }

  Container player() {
    return Container(
      height: 222,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/pages/lucyfer_page.jpg',
          ),
          fit: BoxFit.fill,
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black, Colors.white],
        ),
      ),
      child: const SizedBox.shrink(),
    );
  }

  SizedBox notes() {
    return SizedBox(
      height: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 7),
          const Row(
            children: [
              Image(
                image: AssetImage('assets/logo/small_netflix_logo.png'),
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'SERIES',
                    style: TextStyle(
                        letterSpacing: 4, fontSize: 9, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'Lucyfer',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                Text(
                  '2021',
                  style: sufix(),
                ),
                const SizedBox(width: 2),
                ageLimit(),
                const SizedBox(width: 4),
                Text(
                  '6 seasons',
                  style: sufix(),
                ),
                const Icon(
                  Icons.hd_outlined,
                  color: Color(0xFF4F4C4C),
                  size: 19,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: playButton(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: downloadButton(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'C1:E1 Pilot',
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            child: Text(
              'The bored devil abandons the role of the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins accompanying the lady detective from the homicide department.',
              style: GoogleFonts.openSans(color: Colors.white, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: ReadMoreText(
              'Cast: Tom Ellis, Lauren German, Lesley-Ann Brandt, D.B. Woodside, Rachael Harris, Kevin Alejandro, Aimee Garcia, Scarlett Estevez',
              style: GoogleFonts.openSans(
                color: const Color(0xFF564E4E),
                fontSize: 12,
              ),
              trimLines: 1,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...more',
              colorClickableText: const Color(0xFF323030),
              trimExpandedText: '...less',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 4),
                      const Icon(
                        Icons.check_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "My list",
                        style: sufix2(),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 4),
                      const ImageIcon(
                        AssetImage('assets/other/like.png'),
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Rate",
                        style: sufix2(),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 4),
                      const ImageIcon(
                        AssetImage('assets/other/share.png'),
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Share",
                        style: sufix2(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container bookmarks() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: 55,
      color: Colors.red,
    );
  }

  Container seasons() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: 38,
      color: Colors.yellow,
    );
  }

  Container cards() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      height: 450,
      color: Colors.grey,
    );
  }

  TextStyle sufix2() {
    return const TextStyle(
        color: Color.fromARGB(255, 79, 68, 68), fontSize: 10);
  }

  TextStyle sufix() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
  }

  Container ageLimit() {
    return Container(
      height: 15,
      width: 21,
      decoration: const BoxDecoration(
          color: Color(0xFF4F4C4C),
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: const Padding(
        padding: EdgeInsets.all(3),
        child: Text(
          '13+',
          style: TextStyle(color: Colors.white, fontSize: 7, letterSpacing: 1),
        ),
      ),
    );
  }

  ElevatedButton playButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          iconSize: const MaterialStatePropertyAll(2)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(width: 3),
          Text(
            'Play',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton downloadButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF292626),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.file_download_outlined,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 3),
          Text('Download C1:E1',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
