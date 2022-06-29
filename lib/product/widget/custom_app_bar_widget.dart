import 'package:flutter/material.dart';

import '../color/color_items.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key, required this.title, this.onPressed})
      : super(key: key);
  final String title;
  final VoidCallback? onPressed;

  ColorItems colorItems = ColorItems();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.chevron_left_outlined, color: colorItems.mainColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w700,
              )),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
