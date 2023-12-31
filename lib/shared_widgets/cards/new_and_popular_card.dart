import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/my_list_button.dart';
import 'package:netflix_copy/shared_widgets/buttons/play_button.dart';
import 'package:netflix_copy/shared_widgets/description.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_series_logo.dart';
import 'package:netflix_copy/shared_widgets/player.dart';
import 'package:netflix_copy/shared_widgets/production_title.dart';

class NewAndPopularCard extends StatelessWidget {
  const NewAndPopularCard({
    super.key,
    required this.page,
    required this.title,
    required this.netflixSeries,
    required this.description,
  });

  final String page;
  final bool netflixSeries;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Player(
                    page: page,
                    borderRadiusValue: 12,
                  ),
                  const SizedBox(height: 13),
                  netflixSeries
                      ? const NetflixSeriesLogo(
                          logoSize: 20,
                        )
                      : const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        ProductionTitle(
                          title: title,
                          fontSize: 25,
                        ),
                        const SizedBox(height: 8),
                        Description(
                            description: description,
                            textColor: const Color.fromARGB(255, 165, 153, 153),
                            fontSize: 14),
                        netflixSeries
                            ? const SizedBox(height: 15)
                            : const SizedBox(height: 30),
                        Row(
                          children: [
                            const MyListButton(
                              textColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 12),
                            const PlayButton(
                              backgroundColor: Color(0xFF434141),
                              textColor: Colors.white,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
