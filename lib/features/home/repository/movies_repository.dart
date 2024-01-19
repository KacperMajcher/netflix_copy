
import 'package:netflix_copy/features/home/model/movie_model.dart';

class MoviesRepository {
  Future<MovieModel> getMovieModel() async {
    return MovieModel(
      page: 'assets/other/test.png',
      title: 'Arcane',
      description:
          'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
    );
  }
}