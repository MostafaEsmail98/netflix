
import 'package:flutter/material.dart';
import 'movie_item.dart';

class ListOfMovies extends StatelessWidget {
  const ListOfMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: MovieItem(),
        );
      },
    );
  }
}


