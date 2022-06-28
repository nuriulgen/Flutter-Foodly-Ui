import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../color/color_items.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.color})
      : super(key: key);
  ColorItems colorItems = ColorItems();
  final String title;
  final Color color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.hw10))),
        onPressed: onPressed,
        child: Padding(
          padding: context.padding2xGeneral,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: colorItems.whiteColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
