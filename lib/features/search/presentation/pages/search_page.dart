import 'package:flutter/material.dart';
import 'package:netflix/features/home/presentation/widgets/movie_item.dart';
import '../widgets/custom_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * .015,
          horizontal: MediaQuery.sizeOf(context).width * .02),
      child: Column(
        children: [
          const CustomSearchBar(),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).height * .01),
                child: const MovieItem(),
              );
            },
          ))
        ],
      ),
    );
  }
}
