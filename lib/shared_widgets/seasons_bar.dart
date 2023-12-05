import 'package:flutter/material.dart';

class SeasonsBar extends StatelessWidget {
  const SeasonsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text(
                'Season 1',
                style: TextStyle(
                  color: Color(0xFF666464),
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.expand_more_sharp,
                size: 15,
                color: Color(0xFF666464),
              )
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.info,
            color: Color(0xFFC9C1C1),
          ),
        ),
      ],
    );
  }
}
