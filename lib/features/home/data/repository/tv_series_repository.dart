import 'dart:developer';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/data_source/tv_series_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto_tv_series.dart';
import 'package:netflix_copy/features/home/data/model/tv_series_model.dart';

class TvSeriesRepository {
  TvSeriesRepository({required this.remoteDataSource});

  final TvSeriesRemoteRetrofitDataSource remoteDataSource;

  Future<List<TvSeriesModel>> getTvSeriesData(int page) async {
    try {
      const String apiKey = ApiConfig.apiKey;

      final TvSeriesResponseDto response =
          await remoteDataSource.getTvSeriesData(
        apiKey,
        page.toString(),
      );

      final List<TvSeriesModel> tvSeries = response.results.map((tvSeriesDto) {
        return TvSeriesModel(
          id: tvSeriesDto.id,
          cover: '${ApiConfig.imageBaseUrl}${tvSeriesDto.backdropPath}',
          poster: '${ApiConfig.imageBaseUrl}${tvSeriesDto.posterPath}',
          title: tvSeriesDto.originalName,
          release: tvSeriesDto.firstAirDate,
          overview: tvSeriesDto.overview,
        );
      }).toList();

      return tvSeries;
    } catch (e) {
      log('Error: $e');
      rethrow;
    }
  }

  Future<TvSeriesDetailsModel> getTvSeriesDetails(int id) async {
    try {
      const String apiKey = ApiConfig.apiKey;

      final TvSeriesDetailsDto tvSeriesDto =
          await remoteDataSource.getTvSeriesDetails(
        id,
        apiKey,
      );

      return TvSeriesDetailsModel(
        id: tvSeriesDto.id,
        name: tvSeriesDto.name,
        numberOfSeasons: tvSeriesDto.numberOfSeasons,
        release: tvSeriesDto.firstAirDate,
        adult: tvSeriesDto.adult,
        overview: tvSeriesDto.overview,
        genres: tvSeriesDto.genres,
        createdBy: tvSeriesDto.createdBy,
        seasons: tvSeriesDto.seasons,
      );
    } catch (e) {
      log('Error: $e');
      rethrow;
    }
  }
}
