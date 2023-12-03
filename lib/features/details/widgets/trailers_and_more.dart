import 'package:flutter/material.dart';

class TrailersAndMore extends StatelessWidget {
  const TrailersAndMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        Container(
          height: 400,
          color: Colors.red,
          child: const Center(
            child: Text("3"),
          ),
        ),
      ],
    );
  }
}
