import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super(const HomeState());

  final MoviesRepository _moviesRepository;

  Future<void> getMovies() async {
    emit(const HomeState());
    try {
      final movieModel = await _moviesRepository.getMoviesModels();

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
