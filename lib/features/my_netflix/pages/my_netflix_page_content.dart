import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_copy/app/injection_container.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/shared_widgets/buttons/account_button.dart';
import 'package:netflix_copy/shared_widgets/buttons/downloaded_button.dart';
import 'package:netflix_copy/shared_widgets/buttons/navigation_button.dart';
import 'package:netflix_copy/shared_widgets/cards/notification_card.dart';
import 'package:netflix_copy/shared_widgets/categories/category_continue_watching.dart';
import 'package:netflix_copy/shared_widgets/categories/category_recently_watched.dart';
import 'package:netflix_copy/shared_widgets/categories/category_share.dart';
import 'package:netflix_copy/shared_widgets/lists/downloaded_episodes_list.dart';

class MyNetflixPageContent extends StatelessWidget {
  const MyNetflixPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getMovies(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == Status.error) {
            return Center(
              child: Text('Error: ${state.errorMessage}'),
            );
          } else {
            return ListView(
              children: [
                const SizedBox(height: 9),
                const AccountButton(),
                const SizedBox(height: 24),
                const NotificationRow(),
                const SizedBox(height: 5),
                const NotificationCard(
                    header: 'Available now',
                    notificationNumber: 'Notification 1',
                    title: 'Season 6',
                    date: '07.12'),
                const NotificationCard(
                    header: 'Keep watching',
                    notificationNumber: 'Notification 2',
                    title: 'Lucyfer',
                    date: '04.12'),
                const SizedBox(height: 34),
                const DownloadedRow(),
                const SizedBox(height: 3),
                DownloadedEpisodesList(
                  covers: state.myList.map((movie) => movie.cover).toList(),
                ),
                const SizedBox(height: 20),
                CategoryShare(
                  title: 'Movies and series that you like',
                  covers:
                      state.likedMovies.map((movie) => movie.poster).toList(),
                  showViewAll: false,
                ),
                const SizedBox(height: 13),
                CategoryShare(
                  title: 'My list',
                  covers: state.myList.map((movie) => movie.poster).toList(),
                  showViewAll: true,
                ),
                const SizedBox(height: 13),
                CategoryShare(
                  title: 'Watched trailers',
                  covers: state.europeanSeries
                      .map((movie) => movie.poster)
                      .toList(),
                  showViewAll: false,
                ),
                const SizedBox(height: 13),
                CategoryContinueWatching(
                  title: 'Continue watching',
                  covers: state.continueWatching
                      .map((movie) => movie.poster)
                      .toList(),
                  showViewAll: false,
                ),
                const SizedBox(height: 13),
                CategoryRecentlyWatched(
                  title: 'Recently watched',
                  covers: state.recentlyWatched
                      .map((movie) => movie.cover)
                      .toList(),
                  titles: state.recentlyWatched
                      .map((movie) => movie.title)
                      .toList(),
                ),
                const SizedBox(height: 13),
              ],
            );
          }
        },
      ),
    );
  }
}
