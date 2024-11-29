import 'package:flutter/material.dart';



class CustomTitleAndSummary extends StatelessWidget {
  const CustomTitleAndSummary({
    super.key, required this.textStyleTitle, required this.textStyleSummary,
  });
  final TextStyle textStyleTitle ;
  final TextStyle textStyleSummary ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "film Name",
        style: textStyleTitle,
      ),
      subtitle: Text(
        "mostafa",
        style:textStyleSummary,
      ),
    );
  }
}