import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import '../../../../core/utils/app_styles.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
    this.title,
    this.summary,
    this.image,
  });

  final String? title;

  final String? summary;

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .18,
          width: MediaQuery.sizeOf(context).width *.25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              fit: BoxFit.cover,
                image ?? "",
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
          ),
        ),
        Expanded(
            child: ListTile(
          title: Text(
            title ?? "none",
            style: AppStyles.textSemiBold24(context),
          ),
          subtitle: Text(
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            parse(summary??"none").body!.text,
            style: AppStyles.textRegular18(context),
          ),
        ))
      ],
    );
  }
}
