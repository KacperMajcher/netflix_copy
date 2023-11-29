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
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Container(
                  height: 466,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/covers/lucyfer_cover.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter),
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
          cardExample('assets/covers/thewitcher_cover.jpg'),
          cardExample('assets/covers/elite_cover.jpg'),
          cardExample('assets/covers/breakingbad_cover.jpg'),
          cardExample('assets/covers/peakyblinders_cover.jpg'),
          cardExample('assets/covers/friends_cover.jpg'),
          cardExample('assets/covers/you_cover.jpg'),
          cardExample('assets/covers/dark_cover.jpg'),
        ],
      ),
    );
  }

  SingleChildScrollView europeanSeries() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample('assets/covers/toyboy_cover.jpg'),
          cardExample('assets/covers/13reasonswhy_cover.jpg'),
          cardExample('assets/covers/the100_cover.jpg'),
          cardExample('assets/covers/lacasadepapel_cover.jpg'),
          cardExample('assets/covers/anne_cover.jpg'),
          cardExample('assets/covers/ateacher_cover.jpg'),
          cardExample('assets/covers/behindhereyes_cover.jpg'),
        ],
      ),
    );
  }

  SingleChildScrollView popularNow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample('assets/covers/caos_cover.jpg'),
          cardExample('assets/covers/dahmer_cover.jpg'),
          cardExample('assets/covers/lucyfer_cover.jpg'),
          cardExample('assets/covers/lupin_cover.jpg'),
          cardExample('assets/covers/cargo_cover.jpg'),
          cardExample('assets/covers/control_cover.jpg'),
          cardExample('assets/covers/daybreak_cover.jpg'),
        ],
      ),
    );
  }

  SingleChildScrollView onlyOnNetflix() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cardExample('assets/covers/sexeducation_cover.jpg'),
          cardExample('assets/covers/prisonbreak_cover.jpg'),
          cardExample('assets/covers/thequeensgambit_cover.jpg'),
          cardExample('assets/covers/toyboy_cover.jpg'),
          cardExample('assets/covers/thesilence_cover.jpg'),
          cardExample('assets/covers/ginnygeorgia_cover.jpg'),
          cardExample('assets/covers/iamnotokaywiththis_cover.jpg'),
        ],
      ),
    );
  }

  Card cardExample(String cover) {
    return Card(
      color: Colors.transparent,
      semanticContainer: false,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Container(
          width: 115,
          height: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(cover),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter),
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
