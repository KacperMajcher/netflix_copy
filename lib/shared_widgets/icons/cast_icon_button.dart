import 'package:flutter/material.dart';

class CastIconButton extends StatelessWidget {
  const CastIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const ImageIcon(
        AssetImage('assets/other/cast.png'),
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
