import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/button_row.dart';


Widget playButton() {
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