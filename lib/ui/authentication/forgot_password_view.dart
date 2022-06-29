import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/ui/authentication/reset_email_view.dart';

import '../../product/color/color_items.dart';
import '../../product/language/language_items.dart';
import '../../product/widget/custom_app_bar_widget.dart';
import '../../product/widget/custom_elevated_button.dart';
import '../../product/widget/text_field_widget.dart';
import '../../product/widget/title_widget.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
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
            _subTitleWidget(context),
            Padding(
              padding: context.padding2xVertical,
              child: _resetTextFieldForm(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _resetButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }

  CustomElevatedButton _resetButtonWidget() {
    return CustomElevatedButton(
      title: appStringConstants!.forgotPasswordButtonTitle,
      color: colorItems.activeColor,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ResetEmailView(),
          ),
        );
      },
    );
  }

  CustomTextField _resetTextFieldForm() {
    return CustomTextField(
      hintText: appStringConstants!.forgotPasswordButtonTitle,
      textInputAction: TextInputAction.done,
      inputBorder: const UnderlineInputBorder(),
    );
  }

  Text _subTitleWidget(BuildContext context) {
    return Text(appStringConstants!.forgotPasswordSubTitle,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: colorItems.bodyColor));
  }

  CustomTitleWidget _titleWidget(BuildContext context) {
    return CustomTitleWidget(
      title: appStringConstants!.forgotPasswordTitle,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: colorItems.mainColor),
    );
  }
}
