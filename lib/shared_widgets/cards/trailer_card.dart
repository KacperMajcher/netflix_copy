import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/widgets/trailers_and_more/title_style.dart';

class TrailerCard extends StatelessWidget {
  const TrailerCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: InkWell(
        child: SizedBox(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 238,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color(0xFF434141),
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 66,
                    color: Colors.white,
                  ),
                ),
              ]),
              const SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    title,
                    style: titleStyle(),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}
