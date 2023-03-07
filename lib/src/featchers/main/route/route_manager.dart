import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/rent_a_car/presentation/screens/rent_a_car_intro_screen.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/rent_a_car/presentation/screens/rent_a_car_main_screen.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/rent_a_car/presentation/screens/rent_a_car_registration.dart';
import 'package:flutter/material.dart';

import '../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_style.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_dimension.dart';
import '../../../core/widgets/app_snack_bar.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_assign_car_screen.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_assign_driver_screen.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_brand_screen.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_driver_registration.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_model_screen.dart';
import '../../module/bpa/rent_a_car/presentation/screens/rent_a_car_year_screen.dart';
import '../model/main_screen_widget_model.dart';

class _Router {
  BuildContext context;

  _Router(this.context);

  String? get currentRoute => ModalRoute.of(context)?.settings.name;

  push(String route) {
    if (currentRoute != route) {
      // Get.toNamed(route);
      Navigator.pushNamed(context, route);
    }
  }

  popAndPush(String route) {
    if (currentRoute != route) {
      // Get.offAndToNamed(route);
      Navigator.popAndPushNamed(context, route);
    }
  }

  pushAndRemoveAll(String route) {
    if (currentRoute != route) {
      // Get.offAllNamed(route);
      Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
    }
  }

  pop() {
    Navigator.of(context).pop();
  }
}

DateTime? exitTimer;

class RouteController {
  BuildContext context;

  RouteController(this.context);

  String? get currentRoute => ModalRoute.of(context)?.settings.name;

  bool back() {
    if (Navigator.canPop(context)) {
      _Router(context).pop();
      return true;
    } else if (exitTimer != null &&
        DateTime.now().isBefore(exitTimer!.add(
          const Duration(seconds: 3),
        ))) {
      _Router(context).pop();

      return true;
    } else {
      exitTimer = DateTime.now();

      // AppSnackBar.showSuccessMessage(
      //   title: "",
      //   message: "Back again to exit application",
      //   durationInSeconds: 3,
      // );

      return false;
    }
  }

  goToRentACarIntroScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: const RentACarIntroScreen(
          key: Key("rent_a_car_intro_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.rent_a_car_icon2,
        appBarTitleWidget: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'RENT',
                style: AppTextStyle.boldTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
              TextSpan(
                text: ' A CAR',
                style: AppTextStyle.normalTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToRentACarMainScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: const RentACarMainScreen(
          key: Key("rent_a_car_main_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.rent_a_car_icon2,
        appBarTitleWidget: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'RENT',
                style: AppTextStyle.boldTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
              TextSpan(
                text: ' A CAR',
                style: AppTextStyle.normalTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToRentACarBrandSelectScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarBrandScreen(
          key: Key("rent_a_car_brand_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.car_add_icon,
        appBarTitleText: "ADD A NEW CAR",
      ),
    );
  }

  goToRentACarModelScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarModelScreen(
          key: Key("rent_a_car_model_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.car_add_icon,
        appBarTitleText: "ADD A NEW CAR",
      ),
    );
  }

  goToRentACarYearScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarYearScreen(
          key: Key("rent_a_car_year_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.car_add_icon,
        appBarTitleText: "ADD A NEW CAR",
      ),
    );
  }

  goToRentACarRegScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarRegistrationScreen(
          key: Key("rent_a_car_registration_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.car_add_icon,
        appBarTitleText: "ADD A NEW CAR",
      ),
    );
  }

  goToRentACarDriverRegScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarDriverRegistrationScreen(
          key: Key("rent_a_car_driver_registration_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.rentACarDriverIcon,
        appBarTitleText: "ADD NEW DRIVER",
      ),
    );
  }

  goToAssignCarScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarAssignCarScreen(
          key: Key("rent_a_car_assign_car_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.assignDriverIcon,
        appBarTitleWidget: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'ASSIGN',
                style: AppTextStyle.boldTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
              TextSpan(
                text: ' CAR',
                style: AppTextStyle.normalTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  goToAssignDriverScreen() {
    if (currentRoute != AppRoutes.MAIN) {
      _Router(context).push(AppRoutes.MAIN);
    }

    sl<MainFunctions>().changeBody(
      context,
      MainScreenWidgetModel(
        body: RentACarAssignDriverScreen(
          key: Key("rent_a_car_assign_driver_screen"),
        ),
        canShowBottomBar: true,
        canShowAppBar: true,
        leadingIconUrl: AppAssets.assignDriverIcon,
        appBarTitleWidget: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'ASSIGN',
                style: AppTextStyle.boldTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
              TextSpan(
                text: ' DRIVER',
                style: AppTextStyle.normalTextStyle!.copyWith(fontSize: AppDimension.h1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
