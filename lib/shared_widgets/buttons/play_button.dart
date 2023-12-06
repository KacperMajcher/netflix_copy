import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/button_row.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key, required this.backgroundColor, required this.textColor});

  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child:  ButtonRow(
          text: 'Play', icon: Icons.play_arrow, iconColor: textColor),
    );
  }
}
