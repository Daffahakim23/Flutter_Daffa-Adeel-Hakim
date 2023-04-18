import 'package:dio/dio.dart';
import 'package:praktikum/constant/api_url.dart';
import 'package:praktikum/models/movie__response/detail_movie_response.dart';
import 'package:praktikum/models/movie__response/list_movie_popular_response.dart';

class MovieService {
  Future<ListMoviePopularResponse> getListMoviePopular() async {
    try {
      final response = await Dio().get(
        '$url/movie/popular?api_key=$apiKey',
      );

      return ListMoviePopularResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception('Failed Get Movie Popular $e');
    }
  }

  Future<DetailMovieResponse> getDetailMovie(String movieId) async {
    try {
      final response = await Dio().get('$url/movie/$movieId?api_key=$apiKey');

      return DetailMovieResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception('Failed Get Detail Movie  $e');
    }
  }
}
