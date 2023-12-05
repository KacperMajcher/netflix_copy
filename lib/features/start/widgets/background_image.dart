import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/backgrounds/background_start.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
