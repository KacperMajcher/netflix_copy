import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/details/widgets/episodes_list.dart';
import 'package:netflix_copy/features/details/widgets/more_likely.dart';
import 'package:netflix_copy/features/details/widgets/trailers_and_more/trailers_and_more.dart';
import 'package:netflix_copy/shared_widgets/buttons/action_buttons.dart';
import 'package:netflix_copy/shared_widgets/cast_list.dart';
import 'package:netflix_copy/shared_widgets/buttons/download_button.dart';
import 'package:netflix_copy/shared_widgets/description.dart';
import 'package:netflix_copy/shared_widgets/episode_title.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_series_logo.dart';
import 'package:netflix_copy/shared_widgets/buttons/play_button.dart';
import 'package:netflix_copy/shared_widgets/production_specyfication.dart';
import 'package:netflix_copy/shared_widgets/production_title.dart';

class DetailsPageContent extends StatefulWidget {
  const DetailsPageContent({super.key});

  @override
  State<DetailsPageContent> createState() => _DetailsPageContentState();
}

class _DetailsPageContentState extends State<DetailsPageContent> {
  final widgets = <Widget>[
    const EpisodesList(),
    const MoreLikely(),
    const TrailersAndMore(),
  ];

  var selectedWidgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const NetflixSeriesLogo(logoSize: 16),
          const SizedBox(height: 1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductionTitle(
                  title: 'Lucyfer',
                  fontSize: 18,
                ),
                const SizedBox(height: 5),
                const ProductionSpecyfication(),
                const PlayButton(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                ),
                const DownloadButton(),
                const SizedBox(height: 4),
                const EpisodeTitle(),
                const SizedBox(height: 5),
                const Overview(
                  overview:
                      'The bored devil abandons the role of the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins accompanying the lady detective from the homicide department.',
                  textColor: Colors.white,
                  fontSize: 12,
                ),
                const SizedBox(height: 8),
                const CastList(),
                const SizedBox(height: 10),
                const ActionButtons(),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  child: DefaultTabController(
                    initialIndex: selectedWidgetIndex,
                    length: widgets.length,
                    child: SizedBox(
                      child: TabBar(
                        labelColor: Colors.white,
                        dividerHeight: 0,
                        indicatorColor: Colors.red,
                        indicator: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.red, width: 4),
                          ),
                        ),
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 7),
                        labelStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        onTap: (index) {
                          setState(() {
                            selectedWidgetIndex = index;
                          });
                        },
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              'Episodes',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'More likely',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Trailers and more',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          widgets[selectedWidgetIndex],
        ],
      ),
    );
  }
}
