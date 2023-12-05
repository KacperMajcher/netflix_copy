import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflix_copy/features/home/pages/home_page.dart';
import 'package:netflix_copy/features/my_netflix/pages/my_netflix_page.dart';
import 'package:netflix_copy/features/new_and_popular/pages/new_and_popular_page.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);
  static var _selectedIndex = 0;

  @override
  NavigationBarWidgetState createState() => NavigationBarWidgetState();
}

class NavigationBarWidgetState extends State<NavigationBarWidget> {
  void _onItemTapped(int index) {
    if (NavigationBarWidget._selectedIndex != index) {
      setState(() {
        NavigationBarWidget._selectedIndex = index;
        switch (index) {
          case 0:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
            break;
          case 1:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NewAndPopularPage()));
            break;
          case 2:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyNetflix()));
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: BottomNavigationBar(
            elevation: 2,
            currentIndex: NavigationBarWidget._selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xFF5B5D5E),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie_filter_rounded),
                label: 'New and popular',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/avatars/avatar.png'),
                  width: 25,
                ),
                
                label: 'My Netflix',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
