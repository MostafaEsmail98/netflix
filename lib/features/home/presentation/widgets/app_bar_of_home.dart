
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CustomAppBar {
  static AppBar appBarOfHome(BuildContext context) {
    return AppBar(
      toolbarHeight: 40,
      centerTitle: true,
      title: Text(
        "Netflix",
        style: AppStyles.textSemiBold24(context),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        )
      ],
    );
  }
}