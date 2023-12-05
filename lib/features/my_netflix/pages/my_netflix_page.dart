import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/my_netflix/widgets/account_button.dart';
import 'package:netflix_copy/features/my_netflix/widgets/downloaded_episodes_list.dart';
import 'package:netflix_copy/features/my_netflix/widgets/my_netflix_buttons.dart';
import 'package:netflix_copy/features/my_netflix/widgets/notification_card.dart';
import 'package:netflix_copy/shared_widgets/cast_icon_button.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class MyNetflix extends StatelessWidget {
  const MyNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Scaffold(
          bottomNavigationBar: const NavigationBarWidget(),
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              children: [
                const SizedBox(height: 9),
                const AccountButton(),
                const SizedBox(height: 24),
                const NotificationRow(),
                const SizedBox(height: 5),
                notificationCard('Available now', 'Notification 1', 'Season 6',
                    '07.12', context),
                notificationCard('Keep watching', 'Notification 2', 'Lucyfer',
                    '04.12', context),
                const SizedBox(height: 34),
                const DownloadedRow(),
                const SizedBox(height: 3),
                const DownloadedEpisodesList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Text(
            'My Netflix',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          castIconButton(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 27, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, size: 27, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
