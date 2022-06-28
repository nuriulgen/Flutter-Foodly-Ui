import 'package:flutter/material.dart';

import '../color/color_items.dart';

class CustomTitleWidget extends StatelessWidget {
  CustomTitleWidget({Key? key, required this.title, this.style})
      : super(key: key);
  ColorItems colorItems = ColorItems();
  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}
