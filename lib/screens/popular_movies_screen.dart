import 'package:flutter/material.dart';
import 'package:movie_db/widgets/movie_card_widget.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MovieCardWidget();
        },
      ),
    );
  }
}
