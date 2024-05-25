import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super(HomeState());

  final MoviesRepository _moviesRepository;

  Future<void> getMovies() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final myList = await _moviesRepository.getMoviesData(1);
      final europeanSeries = await _moviesRepository.getMoviesData(2);
      final popularNow = await _moviesRepository.getMoviesData(3);
      final netflixExclusives = await _moviesRepository.getMoviesData(4);
      final continueWatching = await _moviesRepository.getMoviesData(5);
      final recentlyWatched = await _moviesRepository.getMoviesData(6);
      final likedMovies = await _moviesRepository.getMoviesData(7);

      emit(
        state.copyWith(
          myList: myList,
          europeanSeries: europeanSeries,
          popularNow: popularNow,
          netflixExclusives: netflixExclusives,
          continueWatching: continueWatching,
          recentlyWatched: recentlyWatched,
          likedMovies: likedMovies,
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
