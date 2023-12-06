import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';

class DownloadedCard extends StatelessWidget {
  const DownloadedCard({
    super.key,
    required this.header,
    required this.episodesCount,
  });

  final String header;
  final String episodesCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailsPage()));
      },
      child: SizedBox(
        child: Card(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 225,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        color: Color(0xFF434141)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          header,
                          style: const TextStyle(color: Color(0xFF736D6D)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 225,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    color: Color(0xFF1B1917)),
                child: Center(
                  child: Builder(
                    builder: (context) {
                      final suffix =
                          episodesCount == '1' ? 'episode' : 'episodes';
                      return Text(
                        '$episodesCount $suffix',
                        style: const TextStyle(color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
