import 'package:dio/dio.dart';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto_tv_series.dart';
import 'package:retrofit/retrofit.dart';

part 'tv_series_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConfig.baseUrl)
abstract class TvSeriesRemoteRetrofitDataSource {
  factory TvSeriesRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _TvSeriesRemoteRetrofitDataSource;

  @GET('/tv/popular')
  Future<TvSeriesResponseDto> getTvSeriesData(
    @Query('api_key') String apiKey,
    @Query('page') String page,
  );
}
