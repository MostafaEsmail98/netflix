import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/utils/app_styles.dart';
import 'package:netflix/features/search/presentation/manager/search_cubit.dart';

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
            controller: context.read<SearchCubit>().typeSearch,
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
            onPressed: () {
              context.read<SearchCubit>().getSearchResult();
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ))
      ],
    );
  }
}