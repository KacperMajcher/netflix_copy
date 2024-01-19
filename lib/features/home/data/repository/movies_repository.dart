import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesMockedDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesModels() async {
    final movies = await remoteDataSource.getMovies();
    return movies;
  }
}
