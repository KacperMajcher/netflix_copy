import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/my_list/widgets/games.dart';
import 'package:netflix_copy/features/my_list/widgets/movies_series_and_programs.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final widgets = <Widget>[
    const MoviesSeriesAndPrograms(),
    const Games(),
  ];

  var selectedWidgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                      top: BorderSide(color: Colors.red, width: 3),
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
                        'Movies, series, and programs',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Games',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: widgets[selectedWidgetIndex],
          ),
          const NavigationBarWidget(),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 43,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          const Spacer(),
          Text(
            'My list',
            style: GoogleFonts.openSans(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mode_edit_outlined,
                size: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
