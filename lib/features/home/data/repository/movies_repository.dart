import 'dart:developer';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';

class MoviesRepository {
  MoviesRepository({required this.remoteDataSource});

  final MoviesRemoteRetrofitDataSource remoteDataSource;

  Future<List<MovieModel>> getMoviesData(int page) async {
    try {
      const String apiKey = ApiConfig.apiKey;

      final MovieResponseDto response = await remoteDataSource.getMoviesData(
        apiKey,
        page.toString(),
      );

      final List<MovieModel> movies = response.results.map((movieDto) {
        return MovieModel(
          id: movieDto.id,
          cover: '${ApiConfig.imageBaseUrl}${movieDto.backdropPath}',
          poster: '${ApiConfig.imageBaseUrl}${movieDto.posterPath}',
          title: movieDto.originalTitle,
          release: movieDto.releaseDate,
          overview: movieDto.overview,
        );
      }).toList();

      return movies;
    } catch (e) {
      log('Error: $e');
      rethrow;
    }
  }
}
