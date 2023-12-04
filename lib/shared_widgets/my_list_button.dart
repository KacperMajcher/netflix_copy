import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/button_row.dart';

Widget myListButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF32302D),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    ),
    child: buttonRow('My list', Icons.add, Colors.white),
  );
}
