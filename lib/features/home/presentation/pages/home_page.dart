import 'package:flutter/material.dart';
import 'package:netflix/features/home/presentation/widgets/app_bar_of_home.dart';
import '../widgets/movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBarOfHome(context),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .07),
            child: const MovieCard(),
          ),
        ],
      ),
    );
  }
}


