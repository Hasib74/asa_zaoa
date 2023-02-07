import 'package:asa_zaoa/src/core/dependencyInjection/app_dependency_injections.dart';
import 'package:asa_zaoa/src/core/flavor/app_flavor.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/featchers/splash/presentation/bloc/splash_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await intiGetIt();

  sl<FlavorConfig>().configure(FlavorConfig(flavor: Flavor.STAGING));

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor.withOpacity(0.6),
    ),
  );

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => SplashScreenCubit(),
    ),

  ], child: const MyApp()));
}
