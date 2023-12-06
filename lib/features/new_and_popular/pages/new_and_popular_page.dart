import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/shared_widgets/cards/new_and_popular_card.dart';
import 'package:netflix_copy/shared_widgets/icons/cast_icon_button.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class NewAndPopularPage extends StatelessWidget {
  const NewAndPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(231, 22, 21, 21),
      appBar: appBar(),
      body: ListView(
        children: const [
          NewAndPopularCard(
            page: 'assets/pages/arcane_page.jpg',
            netflixSeries: true,
            title: 'Arcane',
            description:
                'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
          ),
          NewAndPopularCard(
            page: 'assets/pages/spiderman_page.jpg',
            netflixSeries: false,
            title: 'Spider-Man',
            description:
                'After getting bitten by a genetically enhanced spider, shy teen Peter Parker develops web-slinging, wall-climbing powers and meets a dangerous new foe.',
          ),
          NewAndPopularCard(
            page: 'assets/pages/lucyfer_page.jpg',
            netflixSeries: true,
            title: 'Lucifer',
            description:
                'The bored devil abandons his role as the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins to be accompanied by a detective from the homicide department.',
          ),
        ],
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}

AppBar appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        Text(
          'New and popular',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        const CastIconButton(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 27, color: Colors.white),
        ),
      ],
    ),
  );
}
