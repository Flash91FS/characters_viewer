import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Dimensions {
  static double mobileWidth = 635;

  static bool isTabletOrLandscape(BuildContext context) => MediaQuery.of(context).size.width > mobileWidth;

  static bool isTabletOrBigger(){
    final double devicePixelRatio = ui.PlatformDispatcher.instance.views.first.devicePixelRatio;
    // final double devicePixelRatio = ui.window.devicePixelRatio;
    // final ui.Size size = ui.window.physicalSize;
    final ui.Size size = ui.PlatformDispatcher.instance.views.first.physicalSize;
    final double width = size.width;
    final double height = size.height;

    if(devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
      debugPrint('TABLET');
      return true;
    }
    else if(devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
      debugPrint('TABLET');
      return true;
    }
    debugPrint('PHONE');
    return false;
  }

}