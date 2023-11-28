import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundGradient(),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  height: 450,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'My list',
                    style: categoryNameStyle(),
                  ),
                ],
              ),
              myList(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'European series',
                    style: categoryNameStyle(),
                  ),
                ],
              ),
              europeanSeries(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Popular now',
                    style: categoryNameStyle(),
                  ),
                ],
              ),
              popularNow(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Netflix exclusives',
                    style: categoryNameStyle(),
                  ),
                ],
              ),
              onlyOnNetflix(),
            ],
          )),
    );
  }

  TextStyle categoryNameStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }

  SingleChildScrollView myList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample(),
          cardExample(),
          cardExample(),
          cardExample(),
        ],
      ),
    );
  }

  SingleChildScrollView europeanSeries() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample(),
          cardExample(),
          cardExample(),
          cardExample(),
        ],
      ),
    );
  }

  SingleChildScrollView popularNow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample(),
          cardExample(),
          cardExample(),
          cardExample(),
        ],
      ),
    );
  }

  SingleChildScrollView onlyOnNetflix() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample(),
          cardExample(),
          cardExample(),
          cardExample(),
        ],
      ),
    );
  }

  Card cardExample() {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: SizedBox(
            width: 100,
            height: 150,
            child: Text('A card that can be tapped'),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: smallLogo(),
      title: Row(
        children: [
          const Text('For You, Xyz'),
          const Expanded(child: SizedBox()),
          castIconButton(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              weight: 49,
            ),
          ),
        ],
      ),
      leading: const SizedBox(),
    );
  }

  BoxDecoration backgroundGradient() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
          Color.fromARGB(255, 83, 80, 81),
          Color.fromARGB(255, 52, 16, 16)
        ]));
  }

  IconButton castIconButton() {
    return IconButton(
      onPressed: () {},
      icon: const ImageIcon(
        AssetImage('assets/other/cast.png'),
        size: 40,
      ),
    );
  }

  Container smallLogo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo/small_netflix_logo.png'),
          alignment: Alignment.bottomLeft,
        ),
      ),
      margin: const EdgeInsets.only(top: 54, left: 13, bottom: 12),
      width: 30,
      height: 30,
    );
  }
}
