import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //PADDING
  EdgeInsets get paddingZero => EdgeInsets.zero;
  EdgeInsets get paddingGeneral => const EdgeInsets.all(10);
  EdgeInsets get padding2xGeneral => const EdgeInsets.all(20);
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
  EdgeInsets get padding3xOnlyTop => const EdgeInsets.only(top: 30);
  EdgeInsets get padding5xOnlyTop => const EdgeInsets.only(top: 50);
  EdgeInsets get padding2xOnlyLeft => const EdgeInsets.only(left: 20);
  EdgeInsets get padding2xOnlyBottom => const EdgeInsets.only(bottom: 20);
  EdgeInsets get padding8xOnlyBottom => const EdgeInsets.only(bottom: 80);

  // HEIGHT- WIDTH
  double get hw5 => 5;
  double get hw10 => 10;
  double get hw20 => 20;
  double get hw30 => 30;
  double get hw35 => 35;
  double get hw50 => 50;
  double get hw70 => 70;
  double get hw100 => 100;
  double get hw245 => 245;
  double get hw340 => 340;
}
