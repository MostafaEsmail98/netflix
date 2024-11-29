
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'custom_title_and_summary.dart';

class DetailsOfFilm extends StatelessWidget {
  const DetailsOfFilm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2),
      itemBuilder: (BuildContext context, int index) {
        return CustomTitleAndSummary(
          textStyleTitle: AppStyles.textSemiBold18(context),
          textStyleSummary: AppStyles.textRegular14(context),
        );
      },
    );
  }
}
