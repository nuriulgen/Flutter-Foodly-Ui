import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/constants/image/image_constants.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/custom_text_button.dart';

import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/custom_big_card_widget.dart';
import '../../product/widget/custom_small_card_widget.dart';
import '../../product/widget/title_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  List<String> foodImages = [
    'home1',
    'mediumCoffe',
    'smallMc',
    'free',
    'bigMc',
    'bigOrange',
    'bigCake',
    'mediumChow',
    'mediumCokkie',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(context),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: context.paddingXVertical,
                child: _firstBigImage(context),
              ),
              _firstTitleWidget(context),
              Padding(
                padding: context.paddingXOnlyBottom,
                child: _verticalResturants(),
              ),
              _foodImages3(context),
              _secondTitleWidget(context),
              _thirdTitleWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Column _thirdTitleWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CustomBigCardWidget(
            title: appStringConstants!.bigCardTitle1,
            imageName: foodImages[4],
          ),
        ),
        SizedBox(height: context.hw10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CustomBigCardWidget(
            title: appStringConstants!.bigCardTitle2,
            imageName: foodImages[6],
          ),
        ),
        SizedBox(height: context.hw10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CustomBigCardWidget(
            title: appStringConstants!.bigCardTitle3,
            imageName: foodImages[5],
          ),
        ),
      ],
    );
  }

  Row _secondTitleWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitleWidget(
          title: appStringConstants!.homeTitle3,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        CustomTextButton(
            title: appStringConstants!.homeTextButtonTitle,
            onPressed: () {},
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: colorItems.activeColor,
                  fontWeight: FontWeight.w500,
                ))
      ],
    );
  }

  SizedBox _foodImages3(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: PngImage(name: foodImages[3]),
    );
  }

  SizedBox _verticalResturants() {
    return SizedBox(
      height: context.hw265,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CustomSmallCardWidget(
            title: appStringConstants!.customCardTitle1,
            imageName: foodImages[1],
          ),
          CustomSmallCardWidget(
            title: appStringConstants!.customCardTitle2,
            imageName: foodImages[2],
          ),
          CustomSmallCardWidget(
            title: appStringConstants!.customCardTitle1,
            imageName: foodImages[1],
          ),
          CustomSmallCardWidget(
            title: appStringConstants!.customCardTitle2,
            imageName: foodImages[2],
          ),
        ],
      ),
    );
  }

  Row _firstTitleWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitleWidget(
          title: appStringConstants!.homeTitle1,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w500,
              ),
        ),
        CustomTextButton(
            title: appStringConstants!.homeTextButtonTitle,
            onPressed: () {},
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: colorItems.activeColor,
                  fontWeight: FontWeight.w500,
                ))
      ],
    );
  }

  SizedBox _firstBigImage(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: PngImage(name: foodImages[0]),
    );
  }

  AppBar _appBarWidget(BuildContext context) {
    return AppBar(
      toolbarHeight: context.highValue,
      title: Padding(
        padding: context.padding2xHorizontal,
        child: _appBarTitleWidget(context),
      ),
      centerTitle: true,
      leadingWidth: 0,
    );
  }

  Column _appBarTitleWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTitleWidget(
          title: appStringConstants!.homeAppBarSubTitle,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: colorItems.activeColor,
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: context.padding3xOnlyLeft,
              child: CustomTitleWidget(
                title: appStringConstants!.homeAppBarTitle,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: colorItems.mainColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down, color: colorItems.mainColor)),
          ],
        ),
      ],
    );
  }
}
