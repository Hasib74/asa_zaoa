import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';

class RentACarNoRegisteredCar extends StatelessWidget {
  RentACarNoRegisteredCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "You have no car registered yet",
            style: AppTextStyle.normalTextStyle!.copyWith(
              fontSize: AppDimension.b3,
              color: AppColors.black.withOpacity(.7),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.RENT_A_CAR_BRAND_SCREEN);
            },
            child: Column(
              children: [
                Icon(
                  Icons.add_circle,
                  color: AppColors.grey.withOpacity(.3),
                  size: AppDimension.h3,
                ),
                Text(
                  "Add A New Car",
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b1,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
