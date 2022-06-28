import 'package:flutter/material.dart';

import '../color/color_items.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.hintText,
      this.textInputType,
      this.textInputAction})
      : super(key: key);
  final String hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  ColorItems colorItems = ColorItems();
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: colorItems.inputColor,
        filled: true,
        hintText: widget.hintText,
      ),
    );
  }
}
