import 'package:flutter/material.dart';

import '../widgets/custom_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height*.015,
          horizontal: MediaQuery.sizeOf(context).width * .02),
      child: const Column(
        children: [
          CustomSearchBar()
        ],
      ),
    );
  }
}


