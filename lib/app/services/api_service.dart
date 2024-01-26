import 'package:http/http.dart' as http;
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';


class ApiService {
  static Future<List<MovieModel>> fetchMovies() async {
    final response = await http.get(Uri.parse(
      '${ApiConfig.baseUrl}/movie/popular?api_key=${ApiConfig.apiKey}',
    ));
    
  }
}
