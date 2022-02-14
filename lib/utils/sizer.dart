import 'package:flutter/material.dart';

class GetSize {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  static double? topPadding;
  static double? keyboard;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    topPadding = _mediaQueryData!.padding.top;
    keyboard = _mediaQueryData!.viewInsets.bottom;
  }
}

double getHeight(double inputHeight) {
  double screenHeight = GetSize.screenHeight as double;
  return (inputHeight / 720.0) * screenHeight;
}

double getwidth(double inputWidth) {
  double screenWidth = GetSize.screenWidth as double;
  return (inputWidth / 360.0) * screenWidth;
}

double gettop() {
  double topPadding = GetSize.topPadding as double;
  return (topPadding);
}

double getWidthFull() {
  double topPadding = GetSize.screenWidth as double;
  return (topPadding);
}

double aware() {
  double topPadding = GetSize.keyboard as double;
  return (topPadding);
}
