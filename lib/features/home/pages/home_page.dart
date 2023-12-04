import 'package:flutter/material.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';
import 'package:netflix_copy/features/home/widgets/category_section.dart';
import 'package:netflix_copy/features/home/widgets/categories.dart';
import 'package:netflix_copy/shared_widgets/cast_icon_button.dart';
import 'package:netflix_copy/shared_widgets/my_list_button.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';
import 'package:netflix_copy/shared_widgets/play_button.dart';
import 'package:netflix_copy/shared_widgets/small_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF535051),
              Color(0xFF341010),
            ],
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: const NavigationBarWidget(),
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailsPage()));
                      },
                      child: Container(
                        height: 466,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/covers/lucyfer_cover.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter),
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(10, 10)),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 412),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12),
                            Expanded(child: playButton()),
                            const SizedBox(width: 12),
                            Expanded(child: myListButton()),
                            const SizedBox(width: 12),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              categorySection('My list', category1(), showViewAll: true),
              categorySection('European series', category2()),
              categorySection('Popular now', category3()),
              categorySection('Netflix exclusives', category4()),
              const SizedBox(height: 30),
            ],
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
          smallLogo(),
          const Text(
            'For You, Xyz',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          castIconButton(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 27, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
