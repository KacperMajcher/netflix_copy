import 'package:dio/dio.dart';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConfig.baseUrl)
abstract class MoviesRemoteRetrofitDataSource {
  factory MoviesRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _MoviesRemoteRetrofitDataSource;

  @GET(
      '/movie?include_adult=false&include_video=false&language=en-US&page={page}&sort_by=popularity.desc&api_key={apiKey}')
  Future<MovieResponseDto> getMoviesData(
    @Path('page') String page,
    @Path('apiKey') String apiKey,
  );
}
