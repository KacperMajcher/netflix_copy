import 'package:flutter/material.dart';

class NetflixLogo extends StatelessWidget {
  const NetflixLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 70),
      child: const Center(
        child: Image(
          image: AssetImage('assets/logo/netflix_logo.png'),
        ),
      ),
    );
  }
}
