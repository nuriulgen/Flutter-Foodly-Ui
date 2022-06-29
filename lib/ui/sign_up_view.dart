import 'package:flutter/material.dart';
import 'package:flutter_foodly/core/extension/context_extension.dart';
import 'package:flutter_foodly/ui/sign_in_view.dart';

import '../product/color/color_items.dart';
import '../product/language/language_items.dart';
import '../product/widget/custom_app_bar_widget.dart';
import '../product/widget/custom_elevated_button.dart';
import '../product/widget/subTitle_widget.dart';
import '../product/widget/text_field_widget.dart';
import '../product/widget/title_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  final String text = 'Or';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: appStringConstants!.signUpAppBarTitle),
      body: Padding(
        padding: context.padding2xHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.paddingXVertical,
              child: _titleWidget(context),
            ),
            _subTitleWidget(context),
            SizedBox(height: context.hw30),
            _nameTextFieldWidget(),
            SizedBox(height: context.hw10),
            _emailTextFieldWidget(),
            SizedBox(height: context.hw10),
            _passwordTextFieldWidget(),
            Padding(
              padding: context.padding2xVertical,
              child: _signUpButtonWidget(context),
            ),
            _messageText(context),
            Padding(
              padding: context.paddingXVertical,
              child: _textWidget(context),
            ),
            Padding(
              padding: context.paddingXVertical,
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

  Center _messageText(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.hw285,
        height: context.hw45,
        child: Text(
          appStringConstants!.signUpMessage,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: colorItems.bodyColor),
        ),
      ),
    );
  }

  CustomTextField _nameTextFieldWidget() {
    return CustomTextField(
      hintText: appStringConstants!.signUpNameForm,
      textInputAction: TextInputAction.next,
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

  SizedBox _signUpButtonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.signUpElevatedButton,
        color: colorItems.activeColor,
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
      title: appStringConstants!.signUpTitle,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: colorItems.mainColor),
    );
  }

  SizedBox _subTitleWidget(BuildContext context) {
    return SizedBox(
      width: context.hw275,
      height: context.hw35,
      child: CustomRichText(
        title: appStringConstants!.signUpSubTitle,
        buttonTitle: appStringConstants!.signUpButtonTitle,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => const SignInView()),
          );
        },
      ),
    );
  }
}
