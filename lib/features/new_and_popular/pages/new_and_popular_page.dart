import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';
import 'package:netflix_copy/shared_widgets/cards/new_and_popular_card.dart';
import 'package:netflix_copy/shared_widgets/icons/cast_icon_button.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class NewAndPopularPage extends StatelessWidget {
  const NewAndPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
          MoviesRepository(remoteDataSource: MoviesMockedDataSource()))
        ..getMovies(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(231, 22, 21, 21),
            appBar: appBar(),
            body: ListView(
              children: [
                for (final movieModel in state
                    .movieModel) //For each movie model in the mocked data source, it creates a movie card on the home page
                  NewAndPopularCard(
                    movieModel: movieModel,
                  ),
              ],
            ),
            bottomNavigationBar: const NavigationBarWidget(),
          );
        },
      ),
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
