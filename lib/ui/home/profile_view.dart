import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/product/widget/title_widget.dart';

import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/list_tile_widget.dart';

class ProfilPageView extends StatefulWidget {
  const ProfilPageView({Key? key}) : super(key: key);

  @override
  State<ProfilPageView> createState() => _ProfilPageViewState();
}

class _ProfilPageViewState extends State<ProfilPageView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: context.paddingXHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleWidget(context),
            _subTitleWidget(context),
            SizedBox(height: context.hw10),
            _profileSettings(),
            _passwordSettings(),
            _paymentSettings(),
            _locationSettings(),
            _logOutButton(),
          ],
        ),
      ),
    );
  }

  ListTileWidget _logOutButton() {
    return ListTileWidget(
      icon: Icons.logout_outlined,
      title: appStringConstants!.profileListTileTitle5,
      subTitle: appStringConstants!.profileListTileSubTitle5,
    );
  }

  ListTileWidget _locationSettings() {
    return ListTileWidget(
      icon: Icons.location_on,
      title: appStringConstants!.profileListTileTitle4,
      subTitle: appStringConstants!.profileListTileSubTitle4,
    );
  }

  ListTileWidget _paymentSettings() {
    return ListTileWidget(
      icon: Icons.payment_outlined,
      title: appStringConstants!.profileListTileTitle3,
      subTitle: appStringConstants!.profileListTileSubTitle3,
    );
  }

  ListTileWidget _passwordSettings() {
    return ListTileWidget(
      icon: Icons.lock,
      title: appStringConstants!.profileListTileTitle2,
      subTitle: appStringConstants!.profileListTileSubTitle2,
    );
  }

  ListTileWidget _profileSettings() {
    return ListTileWidget(
      icon: Icons.person,
      title: appStringConstants!.profileListTileTitle1,
      subTitle: appStringConstants!.profileListTileSubTitle1,
    );
  }

  Padding _subTitleWidget(BuildContext context) {
    return Padding(
      padding: context.paddingXHorizontal,
      child: SizedBox(
        width: context.hw280,
        child: Text(
          appStringConstants!.profileSubTitle,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: colorItems.bodyColor,
              ),
        ),
      ),
    );
  }

  Padding _titleWidget(BuildContext context) {
    return Padding(
      padding: context.paddingX2Vertical + context.paddingXHorizontal,
      child: CustomTitleWidget(
          title: appStringConstants!.profileTitle,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w700,
              )),
    );
  }
}
