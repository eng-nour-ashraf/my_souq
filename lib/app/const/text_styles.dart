import 'package:flutter/material.dart';

import 'constants.dart';

class AppTextStyles {
  static TextStyle onHeadingH1Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w900,
      fontSize: 48,
    );
  }

  static TextStyle onHeadingH2Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 36,
    );
  }

  static TextStyle onHeadingH3Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    );
  }

  static TextStyle onHeadingH4Style({Color? color, double? height}) {
    return TextStyle(
      height: height,
      color: color,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    );
  }

  static TextStyle onHeadingH5Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
  }

  static TextStyle onHeadingH6Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
  }

  static TextStyle onHeadingH7Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 16,
    );
  }

  static TextStyle onBody1Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
  }

  static TextStyle onBody2Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );
  }

  static TextStyle onBody3Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
  }

  static TextStyle onBody4Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );
  }

  static TextStyle onBody5Style({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 10,
    );
  }

  static TextStyle onButtonStyle({Color? color, double? height}) {
    return TextStyle(
      color: color,
      height: height,
      fontFamily: AppConstants.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
  }
}
