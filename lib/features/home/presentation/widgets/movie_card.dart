import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../generated/assets.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Card(
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(Assets.imagesLargeImage)),
        ),
        Column(
          children: [
            Text(
              "Film Name",
              style:
              AppStyles.textBold11(context).copyWith(fontSize: 32),
            ),
            Text(
              "Summary",
              style: AppStyles.textRegular14(context),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).height * .02),
              width: MediaQuery.sizeOf(context).width * .7,
              height: MediaQuery.sizeOf(context).height * .05,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                  Text(
                    "Play",
                    style: AppStyles.textSemiBold16(context)
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}