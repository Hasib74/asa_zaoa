import 'package:flutter/material.dart';

import '../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/app_image_view.dart';
import '../functions/splash_screen_functions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    sl<SplashScreenFunctions>().init(context);

    return Scaffold(
      backgroundColor: Color(0xff015377),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: AppImageView(
              imageUrl: AppAssets.app_logo_png,
            ),
          ),
        ),
      ),
    );
  }
}
