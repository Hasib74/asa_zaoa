import 'package:asa_zaoa/src/core/app_helper/app_helper.dart';
import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

double? appHeight;

double? appWidth;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: AppHelper.snackBarKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeDataLight,
      builder: (context, widget) {
        widget = ScrollConfiguration(
          behavior: const ScrollBehaviorModified(),
          child: widget ?? const SizedBox.shrink(),
        );

        // widget = botToastBuilder(context, widget);

        return widget;
      },

      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.SPLASH_SCREEN,
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
