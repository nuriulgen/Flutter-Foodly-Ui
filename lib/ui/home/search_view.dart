import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/text_field_widget.dart';
import 'package:flutter_foodly/product/widget/title_widget.dart';

import '../../core/constants/image/image_constants.dart';
import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  List<String> categoriesImages = [
    'fastfood',
    'breakfast',
    'mexican',
    'deserts',
    'bakery',
    'burger',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: ListView(
          physics: const ScrollPhysics(),
          children: [
            _titleWidget(context),
            Padding(
              padding: context.paddingXVertical,
              child: _textFieldWidget(),
            ),
            _categoryTitle(context),
            Padding(
              padding: context.paddingXVertical,
              child: _imageListWithGridWidget(context),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _imageListWithGridWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GridView.count(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: context.hw10,
        mainAxisSpacing: context.hw10,
        children: List.generate(
          categoriesImages.length,
          (index) {
            return Card(
              child: PngImage(name: categoriesImages[index]),
            );
          },
        ),
      ),
    );
  }

  CustomTitleWidget _categoryTitle(BuildContext context) {
    return CustomTitleWidget(
        title: appStringConstants!.searchPageTitle2,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: colorItems.mainColor));
  }

  CustomTextField _textFieldWidget() {
    return CustomTextField(
      hintText: appStringConstants!.searchPageHintText,
      prefixIcon: Icon(
        Icons.search,
        color: colorItems.mainColor,
      ),
    );
  }

  CustomTitleWidget _titleWidget(BuildContext context) {
    return CustomTitleWidget(
        title: appStringConstants!.searchPageTitle,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: colorItems.mainColor));
  }
}
