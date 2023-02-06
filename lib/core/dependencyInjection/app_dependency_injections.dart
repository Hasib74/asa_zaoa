import 'package:asa_zaoa/featchers/auth/presentation/functions/sign_in_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:asa_zaoa/core/flavor/app_flavor.dart';

import 'package:get_it/get_it.dart';
import '../../featchers/auth/presentation/functions/sign_up_functions.dart';

import '../../featchers/splash/presentation/functions/splash_screen_functions.dart';
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

  //functions
  //sl.registerLazySingleton(() => ProductFunctions());
  sl.registerLazySingleton(() => SignInFunctions());
  sl.registerLazySingleton(() => SignUpFunctions());

  // //data source
  // sl.registerLazySingleton<ProductRemoteDataSource>(
  //     () => ProductRemoteDataSourceImpl());
  //
  // //repository
  // sl.registerLazySingleton<ProductRepository>(
  //     () => ProductRepositoryImpl(productRemoteDataSource: sl()));
  //
  // //usecase
  // sl.registerLazySingleton<ProductUseCase>(
  //     () => ProductUseCase(producteRepository: sl()));
}
