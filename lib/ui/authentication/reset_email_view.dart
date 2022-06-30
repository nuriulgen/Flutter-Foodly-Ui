import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';

import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/custom_app_bar_widget.dart';
import '../../product/widget/custom_elevated_button.dart';
import '../../product/widget/subtitle_widget.dart';
import '../../product/widget/title_widget.dart';

class ResetEmailView extends StatefulWidget {
  const ResetEmailView({Key? key}) : super(key: key);

  @override
  State<ResetEmailView> createState() => _ResetEmailViewState();
}

class _ResetEmailViewState extends State<ResetEmailView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(title: appStringConstants!.forgotPasswordAppBarTitle),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding2xVertical,
              child: _titleWidget(context),
            ),
            _subTitleWidget(),
            Padding(
              padding: context.padding3xOnlyTop,
              child: _resetElevatedButton(context),
            ),
          ],
        ),
      ),
    );
  }

  CustomRichText _subTitleWidget() {
    return CustomRichText(
      title: appStringConstants!.emailResetSubTitle,
      buttonTitle: appStringConstants!.emailResetButtonTitle,
      onPressed: () {},
    );
  }

  SizedBox _resetElevatedButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.emailElevatedButton,
        color: colorItems.activeColor,
        onPressed: () {},
      ),
    );
  }

  CustomTitleWidget _titleWidget(BuildContext context) {
    return CustomTitleWidget(
      title: appStringConstants!.emailResetTitle,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: colorItems.mainColor),
    );
  }
}
