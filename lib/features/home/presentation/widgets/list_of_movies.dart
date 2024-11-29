import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/utils/routes.dart';
import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';
import 'movie_item.dart';

class ListOfMovies extends StatelessWidget {
  const ListOfMovies({
    super.key,
    required this.allMoviesEntity,
  });

  final List<AllMoviesEntity> allMoviesEntity;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: allMoviesEntity.length-1,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.details);
              },
              child: MovieItem(
                image: allMoviesEntity[index+1].show?.image?.medium,
                title: allMoviesEntity[index+1].show?.name,
                summary: allMoviesEntity[index+1].show?.summary,
              )),
        );
      },
    );
  }
}
