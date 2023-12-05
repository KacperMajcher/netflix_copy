import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/my_netflix/widgets/downloaded_row.dart';
import 'package:netflix_copy/features/my_netflix/widgets/notification_row.dart';
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
              children: const [
                SizedBox(height: 24),
                NotificationRow(),
                SizedBox(height: 40),
                DownloadedRow(),
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
