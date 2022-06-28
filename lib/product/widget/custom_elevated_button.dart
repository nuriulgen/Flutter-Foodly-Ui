import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../color/color_items.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  ColorItems colorItems = ColorItems();
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: colorItems.activeColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.hw5))),
        onPressed: onPressed,
        child: Padding(
          padding: context.p20,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: colorItems.whiteColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
