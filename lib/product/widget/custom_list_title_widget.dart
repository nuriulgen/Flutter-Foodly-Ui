import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../color/color_items.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      this.countProduct,
      this.productName,
      this.productFeatures,
      this.productPrice})
      : super(key: key);

  final String? productName;
  final String? productFeatures;
  final double? productPrice;
  final int? countProduct;
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

  Text _trailingWidget() => Text('\$$productPrice');

  Padding _subTitleWidget(BuildContext context) {
    return Padding(
      padding: context.paddingX2OnlyTop,
      child: SizedBox(
        height: context.hw50,
        width: context.hw200,
        child: Text(productFeatures!),
      ),
    );
  }

  Text _titleWidget(BuildContext context, ColorItems colorItems) {
    return Text(productName!,
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
            countProduct.toString(),
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
