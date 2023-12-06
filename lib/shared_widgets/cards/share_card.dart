
import 'package:flutter/material.dart';

class ShareCard extends StatelessWidget {
  const ShareCard({super.key, required this.cover});

  final String cover;
  @override
  Widget build(BuildContext context) {
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
}