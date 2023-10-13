import 'package:flutter/material.dart';

class Dimensions {
  static double mobileWidth = 635;

  static bool isTabletOrLandscape(BuildContext context) => MediaQuery.of(context).size.width > mobileWidth;
}