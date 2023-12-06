import 'package:flutter/widgets.dart';
import 'package:netflix_copy/shared_widgets/lists/category_list.dart';
import 'package:netflix_copy/shared_widgets/lists/continue_watching_list.dart';
import 'package:netflix_copy/shared_widgets/lists/share_list.dart';

Widget category1() => const CategoryList([
      'thewitcher_cover.jpg',
      'elite_cover.jpg',
      'breakingbad_cover.jpg',
      'peakyblinders_cover.jpg',
      'friends_cover.jpg',
      'you_cover.jpg',
      'dark_cover.jpg',
    ]);

Widget category2() => const CategoryList([
      'toyboy_cover.jpg',
      '13reasonswhy_cover.jpg',
      'the100_cover.jpg',
      'lacasadepapel_cover.jpg',
      'anne_cover.jpg',
      'ateacher_cover.jpg',
      'behindhereyes_cover.jpg',
    ]);

Widget category3() => const CategoryList([
      'caos_cover.jpg',
      'dahmer_cover.jpg',
      'lucyfer_cover.jpg',
      'lupin_cover.jpg',
      'cargo_cover.jpg',
      'control_cover.jpg',
      'daybreak_cover.jpg',
    ]);

Widget category4() => const CategoryList([
      'sexeducation_cover.jpg',
      'prisonbreak_cover.jpg',
      'thequeensgambit_cover.jpg',
      'toyboy_cover.jpg',
      'thesilence_cover.jpg',
      'ginnygeorgia_cover.jpg',
      'iamnotokaywiththis_cover.jpg',
    ]);

Widget categoryShare() => const ShareList([
      'thewitcher_cover.jpg',
      'elite_cover.jpg',
      'breakingbad_cover.jpg',
      'peakyblinders_cover.jpg',
      'friends_cover.jpg',
      'you_cover.jpg',
      'dark_cover.jpg',
    ]);

Widget categoryContinueWatching() => const ContinueWatchingList([
      'cargo_cover.jpg',
      'control_cover.jpg',
      'daybreak_cover.jpg',
      'dahmer_cover.jpg',
    ]);

Widget categoryRecentlyWatched() => categoryRecentlyWatched();
