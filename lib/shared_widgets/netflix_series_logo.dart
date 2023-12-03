import 'package:flutter/material.dart';

class NetflixSeriesLogo extends StatelessWidget {
  const NetflixSeriesLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(
          image: AssetImage('assets/logo/small_netflix_logo.png'),
          height: 16,
        ),
        Row(
          children: [
            Text(
              'SERIES',
              style:
                  TextStyle(letterSpacing: 4, fontSize: 9, color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}
