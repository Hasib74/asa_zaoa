import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_button.dart';

import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_overlay_dialog.dart';
import '../sections/car_banner.dart';
import '../sections/car_type.dart';
import '../sections/profile_image.dart';
import '../widgets/your_earning.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  bool isProfileUpdated = false;

  @override
  Widget build(BuildContext context) {
    _isUpdatedProfile(context);

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
          onTap: () {},
        ),
        AppSpaces.spacesHeight15,
        CarBanner(),
        AppSpaces.spacesHeight15,
        CarType()
      ],
    ));
  }

  void _isUpdatedProfile(BuildContext context) {
    Future.delayed(Duration.zero).then((value) {
      if (isProfileUpdated == false) {
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
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.CREATE_BPA_PROFILE_SCREEN);
                      },
                      width: MediaQuery.of(context).size.width * 0.4,
                      title: "Update",
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
