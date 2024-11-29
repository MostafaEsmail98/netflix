import 'package:flutter/material.dart';
import 'package:html/parser.dart';

import '../../../../core/utils/app_styles.dart';



class CustomTitleAndSummary extends StatelessWidget {
  const CustomTitleAndSummary({
    super.key, required this.textStyleTitle, required this.textStyleSummary,  this.name,this.summary,
  });
  final TextStyle textStyleTitle ;
  final TextStyle textStyleSummary ;
  final String? name ;
  final String? summary ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name??"none",
        style: textStyleTitle,
      ),
      subtitle: Text(
        parse(summary??"none").body!.text,
        style: AppStyles.textRegular18(context),
      ),
    );
  }
}