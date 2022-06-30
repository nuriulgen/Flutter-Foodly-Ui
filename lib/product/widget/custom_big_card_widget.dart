import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/constants/image/image_constants.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/title_widget.dart';

import '../color/color_items.dart';
import '../language/language_items.dart';

class CustomBigCardWidget extends StatelessWidget {
  CustomBigCardWidget({
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
      height: 280,
      child: Card(
        color: colorItems.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          height: context.hw20,
          width: context.hw52,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: colorItems.activeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.hw10))),
            child: Text(
              appStringConstants!.smallCardVotingButton,
              style: Theme.of(context).textTheme.overline?.copyWith(
                    color: colorItems.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Text(
          appStringConstants!.bigCardSubTitle2,
          style: Theme.of(context).textTheme.overline?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(
          appStringConstants!.bigCardTimeText,
          style: Theme.of(context).textTheme.overline?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        Text(appStringConstants!.bigcardDeliveryType,
            style: Theme.of(context).textTheme.overline?.copyWith(
                  color: colorItems.mainColor,
                  fontWeight: FontWeight.w500,
                )),
      ],
    );
  }

  Text _subTitleWidget(BuildContext context) {
    return Text(
      appStringConstants!.bigCardSubTitle1,
      style: Theme.of(context).textTheme.button?.copyWith(
            color: colorItems.bodyColor,
            fontWeight: FontWeight.w500,
          ),
    );
  }

  PngImage _imageWidget() => PngImage(name: imageName);
}
