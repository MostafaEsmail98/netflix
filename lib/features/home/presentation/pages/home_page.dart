import 'package:flutter/material.dart';
import 'package:netflix/core/utils/app_styles.dart';
import 'package:netflix/core/utils/custom_space_height.dart';
import 'package:netflix/features/home/presentation/widgets/app_bar_of_home.dart';
import '../widgets/list_of_movies.dart';
import '../widgets/movie_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .03),
      child: CustomScrollView(
        slivers: [
          CustomAppBar.appBarOfHome(context),
          SliverToBoxAdapter(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MovieCard(),
                    Text(
                      "Movies",
                      style: AppStyles.textSemiBold24(context),
                    ),
                    const CustomSpaceHeight(height: .01),
                  ])),
          const ListOfMovies()
        ],
      ),
    );
  }
}
