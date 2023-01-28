import 'package:flutter/material.dart';

import '../../featchers/splash/splash_screen.dart';
import '../../featchers/welcome/presentation/welcome_screen.dart';


class AppRoutes {
  static String SPLASH_SCREEN = "/";
  static String WELCOME_SCREEN = "/welcome_screen";
  static getAppRoutes() {
    return {
      SPLASH_SCREEN: (BuildContext context) => const SplashScreen(),
      WELCOME_SCREEN: (BuildContext context) => const WelcomeScreen(),
    };
  }
}
