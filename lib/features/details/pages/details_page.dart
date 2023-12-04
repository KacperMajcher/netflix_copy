import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/details/widgets/episodes.dart';
import 'package:netflix_copy/features/details/widgets/more_likely.dart';
import 'package:netflix_copy/features/details/widgets/trailers_and_more.dart';
import 'package:netflix_copy/shared_widgets/action_buttons.dart';
import 'package:netflix_copy/shared_widgets/cast_list.dart';
import 'package:netflix_copy/shared_widgets/download_button.dart';
import 'package:netflix_copy/shared_widgets/episode_description.dart';
import 'package:netflix_copy/shared_widgets/episode_title.dart';
import 'package:netflix_copy/shared_widgets/netflix_series_logo.dart';
import 'package:netflix_copy/shared_widgets/play_button.dart';
import 'package:netflix_copy/shared_widgets/player.dart';
import 'package:netflix_copy/shared_widgets/production_specyfication.dart';
import 'package:netflix_copy/shared_widgets/production_title.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final widgets = <Widget>[
    const Episodes(),
    const MoreLikely(),
    const TrailersAndMore(),
  ];

  var selectedWidgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          player(),
          notes(),
          bookmarks(),
          widgets[selectedWidgetIndex],
        ],
      ),
    );
  }

  Widget notes() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const NetflixSeriesLogo(),
          const SizedBox(height: 1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductionTitle(),
                const SizedBox(height: 5),
                const ProductionSpecyfication(),
                playButton(),
                downloadButton(),
                const SizedBox(height: 4),
                const EpisodeTitle(),
                const SizedBox(height: 5),
                const EpisodeDescription(),
                const SizedBox(height: 8),
                const CastList(),
                const SizedBox(height: 10),
                const ActionButtons(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bookmarks() {
    return Container(
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
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'More likely',
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Trailers and more',
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
