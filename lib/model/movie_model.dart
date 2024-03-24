class Movie {
  final String title;
  final String backDropPath;
  final String overview;
  final String posterPath;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.overview,
    required this.posterPath,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['Title'],
      backDropPath: map['Poster'],
      overview: map['Plot'],
      posterPath: map['Poster'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Title': title,
      'Poster': backDropPath,
      'Plot': overview,
      // We don't include 'posterPath' here as it's not present in the JSON structure
      
    };
  }
}
