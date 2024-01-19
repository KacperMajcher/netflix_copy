import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/features/home/model/movie_model.dart';
import 'package:netflix_copy/features/home/repository/movies_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._moviesRepository) : super(const HomeState());

  final MoviesRepository _moviesRepository;

  Future<void> getMovies() async {
    emit(const HomeState());
    final movieModel = await _moviesRepository.getMovieModel();
    emit(
      HomeState(
        movieModel: movieModel,
      ),
    );
  }
}
