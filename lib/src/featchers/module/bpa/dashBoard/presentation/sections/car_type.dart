import 'package:asa_zaoa/src/core/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
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
            titile: 'Car',
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.ambulance_png,
            titile: 'Ambulance',
            iconColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.RENT_A_CAR_MAIN_SCREEN,
              );
            },
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.return_car_png,
            titile: 'Return Car',
            iconColor: Colors.black,
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.office_car_png,
            titile: 'Office Car',
            iconColor: Colors.black,
            textStyle: AppTextStyle.semiBoldTextStyle,
          ),
        ]);
  }
}
