import 'package:flutter/material.dart';
import 'package:netflix/core/utils/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration:  InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade800,
                hintText: "Search here....",
                hintStyle: AppStyles.textRegular18(context),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 36,
            ))
      ],
    );
  }
}