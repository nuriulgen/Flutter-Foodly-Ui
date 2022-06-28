import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  //PADDING
  EdgeInsets get p0 => EdgeInsets.zero;
  EdgeInsets get p10 => const EdgeInsets.all(10);
  EdgeInsets get p20 => const EdgeInsets.all(20);
  EdgeInsets get pv10 => const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets get pv20 => const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets get ph10 => const EdgeInsets.symmetric(horizontal: 10);
  EdgeInsets get ph20 => const EdgeInsets.symmetric(horizontal: 20);
  EdgeInsets get ph50 => const EdgeInsets.symmetric(horizontal: 50);
  EdgeInsets get ph170 => const EdgeInsets.symmetric(horizontal: 170);
  EdgeInsets get porl20 => const EdgeInsets.only(right: 20, left: 20);
  EdgeInsets get potb20 => const EdgeInsets.only(top: 20, bottom: 20);
  EdgeInsets get potb70 => const EdgeInsets.only(top: 70, bottom: 20);
  EdgeInsets get pot30 => const EdgeInsets.only(top: 30);
  EdgeInsets get pot50 => const EdgeInsets.only(top: 50);
  EdgeInsets get pob60 => const EdgeInsets.only(bottom: 60);

  // HEIGHT- WIDTH
  double get hw5 => 5;
  double get hw10 => 10;
  double get hw20 => 20;
  double get hw30 => 30;
  double get hw50 => 50;
  double get hw70 => 70;
  double get hw100 => 100;
}
