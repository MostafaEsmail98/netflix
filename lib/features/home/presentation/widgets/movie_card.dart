import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:html/parser.dart';
import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';
import 'package:netflix/features/home/presentation/manager/all_movies_cubit.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/routes.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.allMoviesEntity,
  });

  final AllMoviesEntity allMoviesEntity;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .4,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            InkWell(
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.details, extra: allMoviesEntity.show?.id);
              },
              child: Card(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.network(
                    allMoviesEntity.show?.image?.original ?? "",
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  allMoviesEntity.show?.name ?? "none",
                  style: AppStyles.textBold11(context).copyWith(fontSize: 24),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    parse(allMoviesEntity.show?.summary ?? "none").body!.text,
                    style: AppStyles.textRegular18(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * .5,
                  height: MediaQuery.sizeOf(context).height * .04,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white),
                  child: InkWell(
                    onTap: () {
                      context
                          .read<AllMoviesCubit>()
                          .launch(allMoviesEntity.show!.url ?? "");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Text(
                          "Play",
                          style: AppStyles.textSemiBold16(context)
                              .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
