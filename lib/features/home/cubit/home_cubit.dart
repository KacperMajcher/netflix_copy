import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';
import 'package:netflix_copy/features/home/data/model/tv_series_model.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';
import 'package:netflix_copy/features/home/data/repository/tv_series_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository, this._tvSeriesRepository)
      : super(HomeState());

  final MoviesRepository _moviesRepository;
  final TvSeriesRepository _tvSeriesRepository;

  Future<void> getMovies() async {
    emit(state.copyWith(status: Status.loading));

    try {
      final myList = await _tvSeriesRepository.getTvSeriesData(1);
      final europeanSeries = await _tvSeriesRepository.getTvSeriesData(2);
      final popularNow = await _moviesRepository.getMoviesData(2);
      final netflixExclusives = await _tvSeriesRepository.getTvSeriesData(4);
      final continueWatching = await _moviesRepository.getMoviesData(5);
      final recentlyWatched = await _moviesRepository.getMoviesData(6);
      final likedMovies = await _moviesRepository.getMoviesData(7);

      final allCovers = [
        ...netflixExclusives,
      ];

      final randomCover = allCovers[Random().nextInt(allCovers.length)].poster;

      emit(
        state.copyWith(
          myList: myList,
          europeanSeries: europeanSeries,
          popularNow: popularNow,
          netflixExclusives: netflixExclusives,
          continueWatching: continueWatching,
          recentlyWatched: recentlyWatched,
          likedMovies: likedMovies,
          randomCover: randomCover,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
