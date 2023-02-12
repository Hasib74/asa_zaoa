import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/dashBoard/presentation/sections/car_type.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/dashBoard/presentation/sections/profile_image.dart';
import 'package:flutter/material.dart';

import '../sections/car_banner.dart';
import '../widgets/your_earning.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.CREATE_BPA_PROFILE_SCREEN);
            },
            child: ProfileImage()),
        AppSpaces.spacesHeight35,
        Center(child: Text("WELCOME HASIB AKON")),
        AppSpaces.spacesHeight15,
        YourEarning(),
        AppSpaces.spacesHeight15,
        CarBanner(),
        AppSpaces.spacesHeight15,
        CarType()
      ],
    ));
  }
}
