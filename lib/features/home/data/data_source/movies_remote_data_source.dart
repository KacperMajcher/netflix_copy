import 'package:dio/dio.dart';
import 'package:netflix_copy/core/config.dart';

class MoviesRemoteDioDataSource {
  Future<Map<String, dynamic>?> getMoviesData() async {
    final response = await Dio().get<Map<String, dynamic>>(Config.url);
    return response.data;
  }
}
