import 'package:asa_zaoa/src/core/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/utils/app_assets.dart';

class CarType extends StatelessWidget {
  const CarType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.home,
            titile: 'Rent A Car',
            iconColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.RENT_A_CAR_MAIN_SCREEN,
              );
            },
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.home,
            titile: 'Rent A Car',
            iconColor: Colors.black,
          ),
          AppIconWithTextButton(
            size: 50,
            imageUrl: AppAssets.home,
            titile: 'Rent A Car',
            iconColor: Colors.black,
          ),
        ]);
  }
}
