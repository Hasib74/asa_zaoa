import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';

class SplashScreenFunctions {
  init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.RENT_A_CAR_YEAR_SCREEN, (route) => false);
  }
}
