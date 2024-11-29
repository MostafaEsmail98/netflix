import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../generated/assets.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key, this.title, this.summary,
  });
  final String? title  ;
  final String? summary ;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .18,
            child: Image.asset(
              fit: BoxFit.fill,
              Assets.imagesSmallImg,
            ),
          ),
        ),
        Expanded(
            child: ListTile(
              title: Text(
                title??"none",
                style: AppStyles.textSemiBold24(context),
              ),
              subtitle: Text(
                summary??"none",
                style: AppStyles.textRegular18(context),
              ),
            ))
      ],
    );
  }
}