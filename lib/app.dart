import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

double? appHeight;

double? appWidth;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeDataLight,
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.SPLASH_SCREEN,
    );
  }
}
