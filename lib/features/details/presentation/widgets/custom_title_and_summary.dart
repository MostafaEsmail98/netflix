import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CustomTitleAndSummary extends StatelessWidget {
  const CustomTitleAndSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "film Name",
        style: AppStyles.textSemiBold24(context),
      ),
      subtitle: Text(
        "mostafa",
        style: AppStyles.textRegular16(context),
      ),
    );
  }
}