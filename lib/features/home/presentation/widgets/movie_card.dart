import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../generated/assets.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .4,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Card(
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(Assets.imagesLargeImage)),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Film Name",
                  style: AppStyles.textBold11(context).copyWith(fontSize: 24),
                ),
                Text(
                  "Summary",
                  style: AppStyles.textRegular14(context),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * .5,
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
        ),
      ),
    );
  }
}
