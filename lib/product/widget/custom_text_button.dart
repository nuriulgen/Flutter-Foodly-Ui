import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key, required this.title, required this.onPressed, this.style})
      : super(key: key);
  final String title;
  final TextStyle? style;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: context.padding2xGeneral,
          child: Text(title, style: style),
        ));
  }
}
