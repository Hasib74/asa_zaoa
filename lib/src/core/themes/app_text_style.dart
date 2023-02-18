import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_dimension.dart';

class AppTextStyle {
  static TextStyle? boldTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.bold);
  static TextStyle? semiBoldTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1 - 5,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.w600);

  static TextStyle? smallTextStyle = TextStyle(
      color: AppColors.textFiledHintColor,
      fontSize: AppDimension.b1,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.normal);

  static TextStyle? normalTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.b2,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.normal);
  static TextStyle? largeTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.w500);
  static TextStyle? extraLargeTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1 + 8,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.w800);

  static TextStyle? hintStyle = TextStyle(
      color: AppColors.textFiledHintColor,
      fontSize: AppDimension.b2,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.normal);
}
