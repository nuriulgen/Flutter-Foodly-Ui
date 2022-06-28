import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/ui/walk_through_view.dart';

import '../product/color/color_items.dart';
import '../product/language/language_items.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/custom_text_button.dart';
import '../product/widget/subTitle_widget.dart';
import '../product/widget/text_field_widget.dart';
import '../product/widget/title_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  final String text = 'Or';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(context),
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
            SizedBox(height: context.hw30),
            _emailTextFieldWidget(),
            SizedBox(height: context.hw10),
            _passwordTextFieldWidget(),
            Padding(
              padding: context.paddingXVertical,
              child: _textButtonWidget(context),
            ),
            Padding(
              padding: context.padding2xOnlyBottom,
              child: _signInButtonWidget(context),
            ),
            _textWidget(context),
            Padding(
              padding: context.padding2xVertical,
              child: _facebookButtonWidget(context),
            ),
            Padding(
              padding: context.padding2xOnlyBottom,
              child: _googleButtonWidget(context),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _googleButtonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.signInGoogleButton,
        color: colorItems.googleButtonColor,
        onPressed: () {},
      ),
    );
  }

  SizedBox _facebookButtonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.signInFacebookButton,
        color: colorItems.facebookButtonColor,
        onPressed: () {},
      ),
    );
  }

  Center _textWidget(BuildContext context) {
    return Center(
        child: Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: colorItems.bodyColor),
    ));
  }

  SizedBox _signInButtonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.signInAppBarTitle,
        color: colorItems.activeColor,
        onPressed: () {},
      ),
    );
  }

  Center _textButtonWidget(BuildContext context) {
    return Center(
      child: CustomTextButton(
        title: appStringConstants!.signInTextButton,
        style: Theme.of(context)
            .textTheme
            .button
            ?.copyWith(color: colorItems.bodyColor),
        onPressed: () {},
      ),
    );
  }

  CustomTextField _passwordTextFieldWidget() {
    return CustomTextField(
      hintText: appStringConstants!.signInPasswordForm,
      textInputAction: TextInputAction.done,
    );
  }

  CustomTextField _emailTextFieldWidget() {
    return CustomTextField(
      hintText: appStringConstants!.signInEmailForm,
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }

  CustomTitleWidget _titleWidget(BuildContext context) {
    return CustomTitleWidget(
      title: appStringConstants!.signInTitle,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: colorItems.mainColor),
    );
  }

  SizedBox _subTitleWidget(BuildContext context) {
    return SizedBox(
      width: context.hw245,
      height: context.hw35,
      child: CustomRichText(
        title: appStringConstants!.signInSubTitle,
        buttonTitle: appStringConstants!.signInButtonTitle,
        onPressed: () {},
      ),
    );
  }

  AppBar _appBarWidget(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.chevron_left_outlined, color: colorItems.mainColor),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => const WalkThroughView()),
          );
        },
      ),
      title: Text(appStringConstants!.signInAppBarTitle,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: colorItems.mainColor,
                fontWeight: FontWeight.w700,
              )),
      centerTitle: true,
    );
  }
}
