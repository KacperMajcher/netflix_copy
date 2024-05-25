import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';

class DownloadedCard extends StatelessWidget {
  const DownloadedCard({
    super.key,
    required this.cover,
  });

  final String cover;
  final int episodesCount = 4;

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
                        topRight: Radius.circular(4),
                      ),
                      color: Color(0xFF434141),
                    ),
                    child: Stack(children: [
                      Image.network(
                        cover,
                        fit: BoxFit.fill,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'title',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
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
                    bottomRight: Radius.circular(4),
                  ),
                  color: Color(0xFF1B1917),
                ),
                child: Center(
                  child: Builder(
                    builder: (context) {
                      final suffix = episodesCount.toString() == '1'
                          ? 'episode'
                          : 'episodes';
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
