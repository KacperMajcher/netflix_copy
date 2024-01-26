import 'package:dio/dio.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movies_remote_data_source.g.dart';

@RestApi(baseUrl: 'baseurl')
abstract class MoviesRemoteRetrofitDataSource {
  factory MoviesRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _MoviesRemoteRetrofitDataSource;

  @GET('endpoint1')
  Future<MovieResponseDto> getMoviesData();

  @GET('endpoint2')
  Future<MovieResponseDto> getMoviesDataPage2();

  @GET('endpoint3')
  Future<MovieResponseDto> getMoviesDataPage3();

  @GET('endpoint4')
  Future<MovieResponseDto> getMoviesDataPage4();
}


//to implement api hashes