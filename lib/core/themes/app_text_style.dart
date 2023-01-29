import 'package:asa_zaoa/core/utils/app_colors.dart';
import 'package:asa_zaoa/core/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle? boldTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.bold);

  static TextStyle? normalTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.b2,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.normal);
}
