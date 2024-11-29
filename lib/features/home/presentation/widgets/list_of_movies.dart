
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/utils/routes.dart';
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
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: (){
                GoRouter.of(context).push(AppRouter.details);
              },
              child: const MovieItem()),
        );
      },
    );
  }
}


