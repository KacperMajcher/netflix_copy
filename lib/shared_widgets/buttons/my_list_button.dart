import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/button_row.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({super.key});

  @override
  Widget build(BuildContext context) {
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
}
