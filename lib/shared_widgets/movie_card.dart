import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget movieCard(String cover) {
  return Card(
    color: Colors.transparent,
    semanticContainer: false,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      onTap: () {},
      child: Container(
        width: 115,
        height: 165,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(cover),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    ),
  );
}

Widget movieCardShare(String cover) {
  return Card(
    semanticContainer: false,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    clipBehavior: Clip.hardEdge,
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 115,
            height: 165,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cover),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 27, 26, 24),
            width: 115,
            height: 40,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/other/share.png'),
                    height: 20,
                    color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget movieCardContinueWatching(String cover) {
  const containerWidth = 115.0;

  double randomPercent() {
    double randomdouble = Random().nextDouble();
    return randomdouble;
  }

  return Card(
    semanticContainer: false,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    clipBehavior: Clip.hardEdge,
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: containerWidth,
                height: 165,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(cover),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Container(
                width: containerWidth,
                height: 165,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0.1, 0.3],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.1)
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Icon(
                  Icons.play_circle_outline,
                  size: 66,
                  color: Colors.white,
                ),
              ),
              const Positioned(
                bottom: 1,
                left: 40,
                child: Text(
                  'C2:E1',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          LinearPercentIndicator(
              padding: EdgeInsets.zero,
              width: containerWidth,
              lineHeight: 3,
              percent: randomPercent(),
              backgroundColor: const Color(0xFF6B6969),
              progressColor: const Color(0xFFFF1100)),
          Container(
            color: const Color.fromARGB(255, 27, 26, 24),
            width: 115,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outline_rounded,
                        size: 25, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_sharp,
                          size: 25, color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
