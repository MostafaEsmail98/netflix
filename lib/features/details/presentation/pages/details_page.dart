import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageOfFilm(),
                CustomTitleAndSummary(
                  textStyleTitle: AppStyles.textSemiBold24(context),
                  textStyleSummary: AppStyles.textRegular16(context),
                ),
                const PlayButton(),
                const DetailsOfFilm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
