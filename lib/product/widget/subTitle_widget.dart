import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../color/color_items.dart';

class CustomRichText extends StatelessWidget {
  CustomRichText({
    Key? key,
    required this.title,
    this.onPressed,
    required this.buttonTitle,
  }) : super(key: key);
  ColorItems colorItems = ColorItems();
  final String title;
  final String buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: colorItems.bodyColor),
          children: <TextSpan>[
            TextSpan(
                text: buttonTitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: colorItems.activeColor),
                recognizer: TapGestureRecognizer()..onTap = onPressed)
          ]),
    );
  }
}
