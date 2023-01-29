import 'package:asa_zaoa/core/themes/app_text_style.dart';
import 'package:asa_zaoa/core/utils/app_colors.dart';
import 'package:asa_zaoa/featchers/welcome/presentation/section/welcome_text.dart';
import 'package:asa_zaoa/featchers/welcome/presentation/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:asa_zaoa/core/utils/app_assets.dart';
import 'package:asa_zaoa/core/widgets/app_image_view.dart';

import '../../../core/utils/app_spaces.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _carImage(context),
          AppSpaces.spacesHeight15,
          WelcomeText(),
          AppSpaces.spacesHeight15,
          Spacer(),
          Text("Select User Type..."),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundIconButton(
                  imageUrl: AppAssets.driver_icon, titile: "Driver"),
              // AppSpaces.spacesWidth15,
              RoundIconButton(imageUrl: AppAssets.bpa_icon, titile: "BPA")
            ],
          ),
          Spacer(),
          Spacer(),
          Text(
            "Privacy Policy",
            style: AppTextStyle.normalTextStyle!
                .copyWith(color: AppColors.textColorTwo),
          ),
          Spacer(),
        ],
      ),
    );
  }

  SizedBox _carImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              left: MediaQuery.of(context).size.width * 0.12,
              child: AppImageView(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                imageUrl: AppAssets.welcome_page_car_png,
              )),
        ],
      ),
    );
  }
}
