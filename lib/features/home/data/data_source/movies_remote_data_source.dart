import 'package:dio/dio.dart';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConfig.baseUrl)
abstract class MoviesRemoteRetrofitDataSource {
  factory MoviesRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _MoviesRemoteRetrofitDataSource;

  @GET(ApiConfig.endpointPage1)
  Future<MovieResponseDto> getMoviesData();

  @GET(ApiConfig.endpointPage2)
  Future<MovieResponseDto> getMoviesDataPage2();

  @GET(ApiConfig.endpointPage3)
  Future<MovieResponseDto> getMoviesDataPage3();
}
