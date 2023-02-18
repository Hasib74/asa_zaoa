import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_button.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/dashBoard/presentation/sections/car_type.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/dashBoard/presentation/sections/profile_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_overlay_dialog.dart';
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
        YourEarning(
          onTap: () {
            Overlayment.show(
              context: context,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Profile Not Updated",
                            style: AppTextStyle.extraLargeTextStyle),
                        Text(
                          "Your Personal Profile is incomplete. You must have to upload your personal Profile before using the app. This is important for your safe Travel, thank you.",
                          style: AppTextStyle.normalTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        AppButton(
                          width: MediaQuery.of(context).size.width * 0.4,
                          title: "Update",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        AppSpaces.spacesHeight15,
        CarBanner(),
        AppSpaces.spacesHeight15,
        CarType()
      ],
    ));
  }
}
