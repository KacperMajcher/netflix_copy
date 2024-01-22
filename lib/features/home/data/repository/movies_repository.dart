import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesRemoteDioDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesData() async {
    final json = await remoteDataSource.getMoviesData();
    if (json == null) {
      return [];
    }
    //converter
    return (json['results'] as List)
        .map((item) => MovieModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
