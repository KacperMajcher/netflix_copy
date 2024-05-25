import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/downloaded_button.dart';
import 'package:netflix_copy/shared_widgets/buttons/navigation_button.dart';
import 'package:netflix_copy/shared_widgets/categories.dart';
import 'package:netflix_copy/shared_widgets/buttons/account_button.dart';
import 'package:netflix_copy/shared_widgets/lists/downloaded_episodes_list.dart';
import 'package:netflix_copy/shared_widgets/cards/notification_card.dart';
import 'package:netflix_copy/shared_widgets/categories/category_continue_watching.dart';
import 'package:netflix_copy/shared_widgets/categories/category_recently_watched.dart';
import 'package:netflix_copy/shared_widgets/categories/category_share.dart';

class MyNetflixPageContent extends StatelessWidget {
  const MyNetflixPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        const DownloadedEpisodesList(),
        const SizedBox(height: 20),
        CategoryShare(
            title: 'Movies and series that you like',
            category: categoryShare(),
            showViewAll: false),
        const SizedBox(height: 13),
        CategoryShare(
            title: 'My list', category: category1(), showViewAll: true),
        const SizedBox(height: 13),
        CategoryShare(
            title: 'Watched trailers',
            category: category2(),
            showViewAll: false),
        const SizedBox(height: 13),
        CategoryContinueWatching(
          title: 'Continue watching',
          category: categoryContinueWatching(),
          showViewAll: false,
        ),
        const SizedBox(height: 13),
        const CategoryRecentlyWatched(
            title: 'Recently watched',
            header: 'Episode cover',
            episodeTitle: 'Episode title'),
        const SizedBox(height: 13),
      ],
    );//TODO: Implement api service
  }
}
