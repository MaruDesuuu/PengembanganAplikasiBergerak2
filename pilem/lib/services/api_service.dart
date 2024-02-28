import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = 'd10daf2ee95419b1f3ab14f1d7bbd1f2';

  Future<List<Map<String, dynamic>>> getAllMovies() async {
    final response =
        await http.get(Uri.parse('$baseUrl/movie/now_play?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }

  Future<List<Map<String, dynamic>>> getTrendingMovies() async {
    final response =
    await http.get(Uri.parse('$baseUrl/movie/week?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }

  Future<List<Map<String, dynamic>>> getPopularMovies() async {
    final response =
    await http.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }
}
