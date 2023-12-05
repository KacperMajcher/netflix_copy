import 'package:flutter/material.dart';

class NetflixLogoSmall extends StatelessWidget {
  const NetflixLogoSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo/small_netflix_logo.png'),
        ),
      ),
      width: 40,
      height: 40,
    );
  }
}
