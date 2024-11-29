import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .9,
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
    );
  }
}