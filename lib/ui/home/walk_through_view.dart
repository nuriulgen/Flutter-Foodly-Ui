import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/ui/authentication/sign_in_view.dart';

import '../../core/constants/image/image_constants.dart';
import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/custom_elevated_button.dart';

class WalkThroughView extends StatefulWidget {
  const WalkThroughView({Key? key}) : super(key: key);

  @override
  State<WalkThroughView> createState() => _WalkThroughViewState();
}

class _WalkThroughViewState extends State<WalkThroughView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  late PageController _pageController;
  int activePage = 0;

  List<String> images = ['page_view1', 'page_view2', 'page_view3'];
  List<String> titles = [
    LanguageItems.pageViewTitle1,
    LanguageItems.pageViewTitle2,
    LanguageItems.pageViewTitle3
  ];
  List<String> subTitles = [
    LanguageItems.pageViewSubTitle1,
    LanguageItems.pageViewSubTitle2,
    LanguageItems.pageViewSubTitle3
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _onPageChanged(int index) {
    setState(() {
      activePage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              _imageWidget(context, index),
              Padding(
                padding: context.padding5xOnlyTop,
                child: _titleWidget(index, context),
              ),
              Padding(
                padding: context.padding5xHorizontal + context.paddingXVertical,
                child: _subTitleWidget(index, context),
              ),
              Padding(
                padding:
                    context.padding17xHorizontal + context.padding2xVertical,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, activePage)),
              ),
              Padding(
                padding: context.padding2xHorizontal +
                    context.padding8xOnlyBottom +
                    context.padding3xOnlyTop,
                child: _buttonWidget(context),
              ),
            ],
          );
        },
        itemCount: images.length,
      ),
    );
  }

  SizedBox _imageWidget(BuildContext context, int index) {
    return SizedBox(
        height: context.hw340,
        width: context.hw340,
        child: PngImage(name: images[index]));
  }

  SizedBox _buttonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.pageViewButtonTitle,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => const SignInView()),
          );
        },
        color: colorItems.activeColor,
      ),
    );
  }

  Text _subTitleWidget(int index, BuildContext context) {
    return Text(
      subTitles[index],
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: colorItems.bodyColor),
    );
  }

  Text _titleWidget(int index, BuildContext context) {
    return Text(
      titles[index],
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: colorItems.mainColor, fontWeight: FontWeight.bold),
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  ColorItems colorItems = ColorItems();
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: ProjectMargin.smalllMargin,
      width: ProjectHeightWidgetValue.normal2xHeightItems,
      height: ProjectHeightWidgetValue.normalHeightItems,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? colorItems.activeColor
            : colorItems.indicatorColor,
        shape: BoxShape.rectangle,
      ),
    );
  });
}

class ProjectMargin {
  static const EdgeInsets smalllMargin = EdgeInsets.all(5);
}

class ProjectHeightWidgetValue {
  static const double normalHeightItems = 5;
  static const double normal2xHeightItems = 10;
}
