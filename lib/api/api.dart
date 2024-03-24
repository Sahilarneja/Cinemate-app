import 'package:cinemate_app/data/staticdata.dart';
import 'package:cinemate_app/model/movie_model.dart';

class Api {
  Future<List<Movie>> getUpcomingMovies() async {
    try {
      // Fetching static data for demonstration
      final List<dynamic> staticData = StaticData.movies;
      List<Movie> movies = staticData.map((result) => Movie.fromMap(result)).toList();
      return movies;
    } catch (e) {
      throw Exception('Failed to fetch upcoming movies: $e');
    }
  }

  Future<List<Movie>> getPopularMovies() async {
    try {
      // Simulate fetching static data for popular movies
      final List<dynamic> popularMoviesData = StaticData.popularMovies;
      List<Movie> popularMovies = popularMoviesData.map((result) => Movie.fromMap(result)).toList();
      return popularMovies;
    } catch (e) {
      throw Exception('Failed to fetch popular movies: $e');
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    try {
      // Simulate fetching static data for top rated movies
      final List<dynamic> topRatedMoviesData = StaticData.topRatedMovies;
      List<Movie> topRatedMovies = topRatedMoviesData.map((result) => Movie.fromMap(result)).toList();
      return topRatedMovies;
    } catch (e) {
      throw Exception('Failed to fetch top rated movies: $e');
    }
  }
}


