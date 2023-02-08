
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_dimension.dart';

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
  static TextStyle? largeTextStyle = TextStyle(
      color: AppColors.primaryColor,
      fontSize: AppDimension.h1,
      wordSpacing: AppDimension.wordSpacing,
      fontWeight: FontWeight.w500);
}
