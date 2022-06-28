import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../core/constants/image/image_constants.dart';
import '../product/color/color_items.dart';
import '../product/language/language_items.dart';
import '../product/widget/custom_elevated_button.dart';

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
              PngImage(name: images[index]),
              Padding(
                padding: context.pot50,
                child: _titleWidget(index, context),
              ),
              Padding(
                padding: context.ph50 + context.pv10,
                child: _subTitleWidget(index, context),
              ),
              Padding(
                padding: context.ph170 + context.pv20,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, activePage)),
              ),
              Padding(
                padding: context.ph20 + context.pob60,
                child: _buttonWidget(context),
              ),
            ],
          );
        },
        itemCount: images.length,
      ),
    );
  }

  SizedBox _buttonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.pageViewButtonTitle,
        onPressed: () {},
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
          ?.copyWith(color: colorItems.bodyTextColor),
    );
  }

  Text _titleWidget(int index, BuildContext context) {
    return Text(
      titles[index],
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: colorItems.mainTextColor, fontWeight: FontWeight.bold),
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 10,
      height: 5,
      decoration: BoxDecoration(
          color:
              currentIndex == index ? const Color(0xFF22A45D) : Colors.black26,
          shape: BoxShape.rectangle),
    );
  });
}
