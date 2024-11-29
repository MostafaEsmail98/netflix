
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class CustomAppBar {
  static SliverAppBar appBarOfHome(BuildContext context, VoidCallback onSearchPressed) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 60,
      shadowColor: Colors.grey.shade800,
      centerTitle: true,
      title: Text(
        "Netflix",
        style: AppStyles.textSemiBold24(context),
      ),
      actions: [
        IconButton(
          onPressed: () {
            onSearchPressed();
          },
          icon: const Icon(Icons.search,size: 24,),
        )
      ],
    );
  }
}