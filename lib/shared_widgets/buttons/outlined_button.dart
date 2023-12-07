import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(0, 32)),
            side: MaterialStateProperty.resolveWith<BorderSide>(
              (Set<MaterialState> states) {
                return const BorderSide(
                  color: Color(0xFF53514C),
                );
              },
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.all(8))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}