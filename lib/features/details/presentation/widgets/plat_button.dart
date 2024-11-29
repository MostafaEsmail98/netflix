import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/features/details/presentation/manager/details_movie_cubit.dart';

import '../../../../core/utils/app_styles.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key, required this.url,
  });
  final String url ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<DetailsMovieCubit>().launch(url);
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * .9,
        height: MediaQuery.sizeOf(context).height * .05,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white),
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
    );
  }
}