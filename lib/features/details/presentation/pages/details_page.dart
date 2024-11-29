import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/features/details/presentation/manager/details_movie_cubit.dart';
import '../../../../core/utils/app_styles.dart';
import '../widgets/custom_title_and_summary.dart';
import '../widgets/details_of_film.dart';
import '../widgets/image_of_film.dart';
import '../widgets/plat_button.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<DetailsMovieCubit, DetailsMovieState>(
          builder: (context, state) {
            if (state is DetailsMovieSuccessful) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageOfFilm(image: state.showEntity.image?.original),
                      CustomTitleAndSummary(
                        name: state.showEntity.name ?? "none",
                        summary: state.showEntity.summary ?? "none",
                        textStyleTitle: AppStyles.textSemiBold24(context),
                        textStyleSummary: AppStyles.textRegular16(context),
                      ),
                      PlayButton(
                        url: state.showEntity.url!,
                      ),
                       DetailsOfFilm(showEntity: state.showEntity,)
                    ],
                  ),
                ),
              );
            } else if (state is DetailsMovieFailure) {
              return Text(state.error);
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
