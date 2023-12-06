import 'package:flutter/material.dart';

class NetflixSeriesLogo extends StatelessWidget {
  const NetflixSeriesLogo({
    super.key,
    required this.logoSize,
  });

  final double logoSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: const AssetImage('assets/logo/small_netflix_logo.png'),
          height: logoSize,
        ),
        const Row(
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
