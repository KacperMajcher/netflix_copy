import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';
import 'package:netflix_copy/shared_widgets/app_bars/new_and_popular_app_bar.dart';
import 'package:netflix_copy/shared_widgets/cards/new_and_popular_card.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class NewAndPopularPage extends StatelessWidget {
  const NewAndPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
          MoviesRepository(remoteDataSource: MoviesMockedDataSource()))
        ..getMovies(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unknown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xE7161515),
            appBar: const NewAndPopularAppBar(),
            body: ListView(
              children: [
                for (final movieModel in state.movieModel)
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
