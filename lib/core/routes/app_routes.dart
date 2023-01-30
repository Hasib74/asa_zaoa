import 'package:asa_zaoa/featchers/auth/presentation/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../../featchers/splash/splash_screen.dart';
import '../../featchers/welcome/presentation/welcome_screen.dart';
import '../helper/app_role_enum.dart';

class AppRoutes {
  static String SPLASH_SCREEN = "/";
  static String WELCOME_SCREEN = "/welcome_screen";
  static String LOGIN_SCREEN = "/login_screen";

  static getAppRoutes() {
    return {
      SPLASH_SCREEN: (BuildContext context) => const SplashScreen(),
      WELCOME_SCREEN: (BuildContext context) => const WelcomeScreen(),
      LOGIN_SCREEN: (BuildContext context) => SignInScreen(
            role: ModalRoute.of(context)!.settings.arguments as AppRoleEnum,
          ),
    };
  }
}
