import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../color/color_items.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key, this.leading, this.title, this.subTitle, this.trailing})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final double? trailing;
  final int? leading;
  @override
  Widget build(BuildContext context) {
    ColorItems colorItems = ColorItems();
    double lineThickness = 0.7;
    return Padding(
      padding: context.paddingXVertical,
      child: Column(
        children: [
          ListTile(
            leading: _leadingWidget(context, colorItems),
            title: _titleWidget(context, colorItems),
            subtitle: _subTitleWidget(context),
            trailing: _trailingWidget(),
          ),
          Divider(
            height: context.hw10,
            color: colorItems.bodyColor,
            thickness: lineThickness,
            indent: context.hw10,
            endIndent: context.hw10,
          ),
        ],
      ),
    );
  }

  Text _trailingWidget() => Text('\$$trailing');

  Padding _subTitleWidget(BuildContext context) {
    return Padding(
      padding: context.paddingX2OnlyTop,
      child: SizedBox(
        height: context.hw60,
        width: context.hw200,
        child: Text(subTitle ?? ''),
      ),
    );
  }

  Text _titleWidget(BuildContext context, ColorItems colorItems) {
    return Text(title ?? '',
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: colorItems.mainColor,
              fontWeight: FontWeight.w600,
            ));
  }

  SizedBox _leadingWidget(BuildContext context, ColorItems colorItems) {
    return SizedBox(
      height: context.hw35,
      width: context.hw35,
      child: Card(
        child: Center(
          child: Text(
            leading.toString(),
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: colorItems.activeColor),
          ),
        ),
      ),
    );
  }
}
