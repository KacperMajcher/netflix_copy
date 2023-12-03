import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.transparent,
            ),
          ),
          child: const Column(
            children: [
              SizedBox(height: 4),
              Icon(
                Icons.check_sharp,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(height: 5),
              Text(
                "My list",
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 68, 68), fontSize: 10),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.transparent,
            ),
          ),
          child: const Column(
            children: [
              SizedBox(height: 4),
              ImageIcon(
                AssetImage('assets/other/like.png'),
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                "Rate",
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 68, 68), fontSize: 10),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.transparent,
            ),
          ),
          child: const Column(
            children: [
              SizedBox(height: 4),
              ImageIcon(
                AssetImage('assets/other/share.png'),
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                "Share",
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 68, 68), fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
