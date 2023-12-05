import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/button_row.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child: buttonRow('Play', Icons.play_arrow, Colors.black),
    );
  }
}
