import 'package:flutter/material.dart';
import 'package:cinemate_app/model/movie_model.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color of the entire screen to black
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'CineMate',
          style: GoogleFonts.aBeeZee(
            color: Color.fromARGB(255, 255, 0, 0),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white), // Change back arrow color to white
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 16.0),
              child: Image.network(
                movie.posterPath,
                width: 200,
              ),
            ),
            // Movie Title
            Text(
              movie.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 8),
            // Movie Overview
            Text(
              'Overview:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
            SizedBox(height: 8),
            Text(
              movie.overview,
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 16),
            // Other Movie Details
            Text(
              'Director: ${movie.director}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 8),
            Text(
              'Actors: ${movie.actors}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 8),
            Text(
              'Runtime: ${movie.runtime}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 8),
            Text(
              'Genre: ${movie.genre}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 8),
            Text(
              'Language: ${movie.language}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
            SizedBox(height: 8),
            Text(
              'IMDb Rating: ${movie.imdbRating}',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
            ),
          ],
        ),
      ),
    );
  }
}
