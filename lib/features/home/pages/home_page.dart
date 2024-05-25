import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/app/injection_container.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/details/pages/details_page.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/shared_widgets/buttons/my_list_button.dart';
import 'package:netflix_copy/shared_widgets/buttons/play_button.dart';
import 'package:netflix_copy/shared_widgets/categories/category.dart';
import 'package:netflix_copy/shared_widgets/icons/cast_icon_button.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_logo_small.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getMovies(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == Status.error) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else {
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailsPage(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 466,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/covers/13reasonswhy_cover.jpg'),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(10, 10),
                                  ),
                                ),
                              ),
                            ),
                            const Column(
                              children: [
                                SizedBox(height: 412),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: PlayButton(
                                        backgroundColor: Colors.white,
                                        textColor: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: MyListButton(
                                        textColor: Colors.white,
                                        backgroundColor: Color(0xFF32302D),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Category(
                          title: 'My list',
                          covers: state.myList
                              .map((movie) => movie.poster)
                              .toList(),
                          showViewAll: true),
                      Category(
                          title: 'European series',
                          covers: state.europeanSeries
                              .map((movie) => movie.poster)
                              .toList(),
                          showViewAll: false),
                      Category(
                          title: 'Popular now',
                          covers: state.popularNow
                              .map((movie) => movie.poster)
                              .toList(),
                          showViewAll: false),
                      Category(
                          title: 'Netflix exclusives',
                          covers: state.netflixExclusives
                              .map((movie) => movie.poster)
                              .toList(),
                          showViewAll: false),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            );
          }
        },
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
          const NetflixLogoSmall(size: 40),
          const Text(
            'For You, Xyz',
            style: TextStyle(color: Colors.white),
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
}
