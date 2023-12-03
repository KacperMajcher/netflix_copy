import 'package:flutter/material.dart';

class Episodes extends StatelessWidget {
  const Episodes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Season 1'),
              ),
            ],
          ),
          const Card(
            child: Column(
              children: [
                Text('Episode 1'),
                Text('Title: Pilot'),
                Text(
                    'Description: The bored devil abandons the role of the ruler of hell...'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
