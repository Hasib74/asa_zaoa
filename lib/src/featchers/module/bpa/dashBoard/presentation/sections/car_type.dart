import 'package:asa_zaoa/src/core/widgets/round_icon_button.dart';
import 'package:asa_zaoa/src/featchers/main/route/route_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';

class CarType extends StatelessWidget {
  const CarType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        childAspectRatio: 1.9,
        children: [
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.car_png,
            title: 'Car',
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.ambulance_png,
            title: 'Ambulance',
            iconColor: Colors.black,
            onPressed: () {
              // Navigator.pushNamed(
              //   context,
              //   AppRoutes.RENT_A_CAR_INFO_SCREEN,
              // );
              RouteController(context).goToRentACarIntroScreen();
            },
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.return_car_png,
            title: 'Return Car',
            iconColor: Colors.black,
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.office_car_png,
            title: 'Office Car',
            iconColor: Colors.black,
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
        ]);
  }
}
