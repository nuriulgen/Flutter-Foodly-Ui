import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // X: double = 10

  //PADDING
  EdgeInsets get paddingZero => EdgeInsets.zero;
  EdgeInsets get paddingGeneral => const EdgeInsets.all(10);
  EdgeInsets get padding2xGeneral => const EdgeInsets.all(20);
  EdgeInsets get paddingX2Vertical => const EdgeInsets.symmetric(vertical: 5);
  EdgeInsets get paddingXVertical => const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets get padding2xVertical => const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets get paddingXHorizontal =>
      const EdgeInsets.symmetric(horizontal: 10);
  EdgeInsets get padding2xHorizontal =>
      const EdgeInsets.symmetric(horizontal: 20);
  EdgeInsets get padding5xHorizontal =>
      const EdgeInsets.symmetric(horizontal: 50);
  EdgeInsets get padding17xHorizontal =>
      const EdgeInsets.symmetric(horizontal: 170);
  EdgeInsets get paddingX2OnlyTop => const EdgeInsets.only(top: 5);
  EdgeInsets get padding3xOnlyTop => const EdgeInsets.only(top: 30);
  EdgeInsets get padding5xOnlyTop => const EdgeInsets.only(top: 50);
  EdgeInsets get padding2xOnlyLeft => const EdgeInsets.only(left: 20);
  EdgeInsets get padding3xOnlyLeft => const EdgeInsets.only(left: 30);
  EdgeInsets get paddingXOnlyBottom => const EdgeInsets.only(bottom: 10);
  EdgeInsets get padding2xOnlyBottom => const EdgeInsets.only(bottom: 20);
  EdgeInsets get padding8xOnlyBottom => const EdgeInsets.only(bottom: 80);

  // HEIGHT- WIDTH
  double get hw5 => 5;
  double get hw10 => 10;
  double get hw20 => 20;
  double get hw25 => 25;
  double get hw30 => 30;
  double get hw35 => 35;
  double get hw45 => 45;
  double get hw50 => 50;
  double get hw60 => 60;
  double get hw52 => 52;
  double get hw70 => 70;
  double get hw100 => 100;
  double get hw220 => 220;
  double get hw200 => 200;
  double get hw245 => 245;
  double get hw265 => 265;
  double get hw275 => 275;
  double get hw280 => 280;
  double get hw340 => 340;
}

extension SizeExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;
}
