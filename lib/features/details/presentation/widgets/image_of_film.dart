import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class ImageOfFilm extends StatelessWidget {
  const ImageOfFilm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .4,
      child: Card(
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(Assets.imagesLargeImage)),
      ),
    );
  }
}