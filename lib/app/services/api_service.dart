import 'package:http/http.dart' as http;
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/data/model/movie_model.dart';
import 'dart:convert';

class ApiService {
  static Future<List<MovieModel>> fetchMovies() async {
    final response = await http.get(
      Uri.parse(ApiConfig.apiUrl),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> results = data['results'];
      return results.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch movies');
    }
  }
}
