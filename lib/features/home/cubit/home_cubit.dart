import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super( HomeState());

  final MoviesRepository _moviesRepository;

  Future<void> getMovies() async {
    emit( HomeState());
    try {
      final movieModel = await _moviesRepository.getMoviesData();

      emit(
        HomeState(
          movieModel: movieModel,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
