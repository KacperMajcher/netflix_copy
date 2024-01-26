import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesRemoteRetrofitDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesData() async {
    final MovieResponseDto response = (await remoteDataSource.getMoviesData());

    final List<MovieModel> movies = response.results.map((movieDto) {
      return MovieModel(
        id: movieDto.id,
        cover: movieDto.backdropPath,
        title: movieDto.originalTitle,
        release: movieDto.releaseDate,
        overview: movieDto.overview,
      );
    }).toList();

    return movies;
  }
}
