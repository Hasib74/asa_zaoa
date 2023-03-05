import 'package:flutter/material.dart';

import '../../featchers/auth/presentation/screen/otp_verification_screen.dart';
import '../../featchers/auth/presentation/screen/reset_password.dart';
import '../../featchers/auth/presentation/screen/sign_in_screen.dart';
import '../../featchers/auth/presentation/screen/sign_up_screen.dart';
import '../../featchers/main/screens/main_screen.dart';
import '../../featchers/module/bpa/_display/presentation/screen/bpa_display_screen.dart';
import '../../featchers/module/bpa/profile/presenation/screen/create_profile_screen.dart';
import '../../featchers/module/bpa/rent_a_car/presentation/screens/rent_a_car_reg_success_screen.dart';
import '../../featchers/splash/presentation/screen/splash_screen.dart';
import '../../featchers/welcome/presentation/welcome_screen.dart';
import '../helper/app_role_enum.dart';

class AppRoutes {
  static String SPLASH_SCREEN = "/";
  static String WELCOME_SCREEN = "/welcome_screen";
  static String LOGIN_SCREEN = "/login_screen";
  static String SIGN_UP_SCREEN = "/sign_up_screen";
  static String OTP_VERIFICATION_SCREEN = "/otp_verification_screen";
  static String BPA_DISPLAY = "/BPA_DISPLAY";

  static String MAIN = "/main";

  static String RENT_A_CAR_REG_SUCCESS_SCREEN = "/rent_a_car_reg_success_screen";

  static String CREATE_BPA_PROFILE_SCREEN = "/create_bpa_profile_screen";
  static String RESET_PASSWORD_SCREEN = "/reset_password_screen";

  static getAppRoutes() {
    return {
      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
      WELCOME_SCREEN: (BuildContext context) => const WelcomeScreen(),
      LOGIN_SCREEN: (BuildContext context) => SignInScreen(
            role: ModalRoute.of(context)!.settings.arguments as AppRoleEnum,
          ),
      SIGN_UP_SCREEN: (BuildContext context) => SignUpScreen(
            role: ModalRoute.of(context)!.settings.arguments as AppRoleEnum,
          ),
      OTP_VERIFICATION_SCREEN: (BuildContext context) => OtpVerificationScreen(
            role: ModalRoute.of(context)!.settings.arguments as AppRoleEnum,
          ),
      BPA_DISPLAY: (BuildContext context) => BpaDisplayScreen(),
      MAIN: (BuildContext context) => MainScreen(),
      RENT_A_CAR_REG_SUCCESS_SCREEN: (BuildContext context) => RentACarRegSuccessScreen(),
      CREATE_BPA_PROFILE_SCREEN: (BuildContext context) => CreateBpaProfileScreen(),
      RESET_PASSWORD_SCREEN: (BuildContext context) => ResetPasswordScreen(),
    };
  }
}
