import 'package:flutter/material.dart';
import '../widgets/custom_title_and_summary.dart';
import '../widgets/image_of_film.dart';
import '../widgets/plat_button.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ImageOfFilm(),
              CustomTitleAndSummary(),
              PlayButton()
            ],
          ),
        ),
      ),
    );
  }
}






