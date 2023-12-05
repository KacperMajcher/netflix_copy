import 'package:flutter/material.dart';


class AgeLimit extends StatelessWidget {
  const AgeLimit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 21,
      decoration: const BoxDecoration(
          color: Color(0xFF4F4C4C),
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: const Padding(
        padding: EdgeInsets.all(3),
        child: Text(
          '13+',
          style: TextStyle(color: Colors.white, fontSize: 7, letterSpacing: 1),
        ),
      ),
    );
  }
}
