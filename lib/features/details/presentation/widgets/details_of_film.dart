import 'package:flutter/material.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';

import '../../../../core/utils/app_styles.dart';

class DetailsOfFilm extends StatelessWidget {
  const DetailsOfFilm({
    super.key,
    required this.showEntity,
  });

  final ShowEntity? showEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRowDetails(
          context,
          title1: "Genres",
          subTitle1: showEntity?.genres?.isNotEmpty == true
              ? showEntity!.genres![0]
              : "Unknown",
          subTitle3: (showEntity?.genres?.length ?? 0) > 1
              ? showEntity!.genres![1]
              : "Unknown",
          title2: "Language",
          subTitle2: showEntity?.language ?? "Unknown",
        ),
        buildRowDetails(
          context,
          title1: "Runtime",
          subTitle1: showEntity?.runtime?.toString() ?? "Unknown",
          title2: "Rating",
          subTitle2: showEntity?.rating?.average?.toString() ?? "Unknown",
        ),
        buildRowDetails(
          context,
          title1: "Days",
          subTitle1: showEntity?.schedule?.days?.isNotEmpty == true
              ? showEntity!.schedule!.days![0]
              : "Unknown",
          title2: "Premiere date",
          subTitle2: showEntity?.premiered ?? "Unknown",
        ),
      ],
    );
  }

  Row buildRowDetails(
      BuildContext context, {
        required String title1,
        required String subTitle1,
        required String title2,
        required String subTitle2,
        String? subTitle3 = "",
      }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListTile(
            title: Text(
              title1,
              style: AppStyles.textSemiBold18(context),
            ),
            subtitle: Text("$subTitle1\n$subTitle3"),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              title2,
              style: AppStyles.textSemiBold18(context),
            ),
            subtitle: Text(subTitle2),
          ),
        ),
      ],
    );
  }
}
