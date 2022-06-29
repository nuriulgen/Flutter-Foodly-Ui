import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/constants/image/image_constants.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/title_widget.dart';

import '../color/color_items.dart';
import '../language/language_items.dart';

class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({
    Key? key,
    required this.title,
    required this.imageName,
  }) : super(key: key);

  final String title;
  final String imageName;

  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.hw220,
      child: Card(
        color: colorItems.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _imageWidget(),
            ),
            CustomTitleWidget(title: title),
            _subTitleWidget(context),
            _rowSubTitleWidget(context),
          ],
        ),
      ),
    );
  }

  Row _rowSubTitleWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: context.hw25,
          width: context.hw52,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: colorItems.activeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.hw5))),
            child: Text(
              appStringConstants!.cardVotingButton,
              style: Theme.of(context).textTheme.overline?.copyWith(
                    color: colorItems.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Text(
          appStringConstants!.cardTimeText,
          style: Theme.of(context).textTheme.caption?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          appStringConstants!.cardDeliveryType,
          style: Theme.of(context).textTheme.overline?.copyWith(
                color: colorItems.bodyColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }

  Text _subTitleWidget(BuildContext context) {
    return Text(appStringConstants!.cardSubTitle,
        style: Theme.of(context).textTheme.caption?.copyWith(
              color: colorItems.bodyColor,
              fontWeight: FontWeight.w500,
            ));
  }

  PngImage _imageWidget() => PngImage(name: imageName);
}
