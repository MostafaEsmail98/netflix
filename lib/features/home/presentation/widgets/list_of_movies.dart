
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../generated/assets.dart';

class ListOfMovies extends StatelessWidget {
  const ListOfMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
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
                      "File Name",
                      style: AppStyles.textSemiBold24(context),
                    ),
                    subtitle: Text(
                      "data",
                      style: AppStyles.textRegular18(context),
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
