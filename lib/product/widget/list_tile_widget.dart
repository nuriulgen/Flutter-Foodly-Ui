import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../color/color_items.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    ColorItems colorItems = ColorItems();
    return Padding(
      padding: context.paddingXVertical,
      child: ListTile(
        leading: Icon(
          icon,
          color: colorItems.bodyColor,
          size: context.hw30,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        subtitle: Padding(
          padding: context.paddingX2Vertical,
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
