import 'package:flutter/material.dart';

import '../app_helper/app_helper.dart';
import '../utils/app_colors.dart';

class AppSnackBar {
  static showErrorMessage({String? title, String? message}) {
    AppHelper.snackBarKey.currentState?.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        backgroundColor: AppColors.errorColor,
        content: Text(
          message ?? "",
          style: TextStyle(color: AppColors.white),
        ),
        dismissDirection: DismissDirection.endToStart,
      ),
    );
  }

  static showSuccessMessage({
    String? title,
    String? message,
    int? durationInSeconds,
  }) {
    AppHelper.snackBarKey.currentState?.showSnackBar(
      SnackBar(
        duration: Duration(seconds: durationInSeconds ?? 2),
        backgroundColor: AppColors.primaryColor,
        content: Text(
          message ?? "",
          style: TextStyle(color: AppColors.white),
        ),
        dismissDirection: DismissDirection.endToStart,
      ),
    );
  }
}
