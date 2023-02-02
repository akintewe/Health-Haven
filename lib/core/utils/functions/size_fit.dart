import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double fitHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 1024 is the layout height that designer used in figma
  return (inputHeight / 1024) * screenHeight;
}

// Get the proportionate height as per screen size
double fitWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 1440 is the layout width that designer use in figma
  return (inputWidth / 1440) * screenWidth;
}
