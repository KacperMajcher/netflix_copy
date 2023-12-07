import 'package:flutter/material.dart';

class NetflixLogoSmall extends StatelessWidget {
  const NetflixLogoSmall({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo/small_netflix_logo.png'),
        ),
      ),
      width: size,
      height: size,
    );
  }
}
