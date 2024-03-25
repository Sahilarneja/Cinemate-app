class Movie {
  final String title;
  final String backDropPath;
  final String overview;
  final String posterPath;
  final String director;
  final String actors;
  final String runtime;
  final String genre;
  final String language;
  final String imdbRating;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.overview,
    required this.posterPath,
    required this.director,
    required this.actors,
    required this.runtime,
    required this.genre,
    required this.language,
    required this.imdbRating,
  });

factory Movie.fromMap(Map<String, dynamic> map) {
  return Movie(
    title: map['Title'] ?? '',
    backDropPath: map['Poster'] ?? '',
    overview: map['Plot'] ?? '',
    posterPath: map['Poster'] ?? '',
    director: map['Director'] ?? '',
    actors: map['Actors'] ?? '',
    runtime: map['Runtime'] ?? '',
    genre: map['Genre'] ?? '',
    language: map['Language'] ?? '',
    imdbRating: map['imdbRating'] ?? '',
  );
}

  Map<String, dynamic> toMap() {
    return {
      'Title': title,
      'Poster': backDropPath,
      'Plot': overview,
      'Director': director,
      'Actors': actors,
      'Runtime': runtime,
      'Genre': genre,
      'Language': language,
      'imdbRating': imdbRating,
    };
  }
}
