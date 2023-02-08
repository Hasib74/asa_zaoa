import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:get_it/get_it.dart';
import '../../featchers/auth/presentation/functions/sign_in_functions.dart';
import '../../featchers/auth/presentation/functions/sign_up_functions.dart';

import '../../featchers/splash/presentation/functions/splash_screen_functions.dart';
import '../flavor/app_flavor.dart';
import '../network/app_network.dart';

GetIt sl = GetIt.instance;

Future intiGetIt() async {
  sl.registerSingleton<FlavorConfig>(FlavorConfig());
  sl.registerSingleton(SplashScreenFunctions());

  //network

  if (sl<FlavorConfig>().flavor == null) {
    sl.registerSingleton<AppNetworkInfo>(MockConnectivity());
  } else {
    sl.registerSingleton<AppNetworkInfo>(NetworkInfoImpl(Connectivity()));
  }

  sl.registerLazySingleton(() => SignInFunctions());
  sl.registerLazySingleton(() => SignUpFunctions());
}
