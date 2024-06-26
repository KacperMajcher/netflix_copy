import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/app/injection_container.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/shared_widgets/app_bars/new_and_popular_app_bar.dart';
import 'package:netflix_copy/shared_widgets/cards/new_and_popular_card.dart';
import 'package:netflix_copy/shared_widgets/navigation_bar.dart';

class NewAndPopularPage extends StatelessWidget {
  const NewAndPopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getMovies(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unknown error';
            log(errorMessage);
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
                for (final movieModel in state.popularNow)
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
