import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_image_view.dart';

class RentACarInfoScreen extends StatelessWidget {
  const RentACarInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImageView(
                imageUrl: AppAssets.rent_a_car_banner,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: [
                      Text(
                        "Guaranteed income by participating in bids on rent a car !",
                        style: AppTextStyle.extraLargeTextStyle?.copyWith(
                          fontSize: AppDimension.h1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Secure income by renting out one or more of your cars through the "AshaZaoa" app',
                        style: AppTextStyle.normalTextStyle?.copyWith(
                          color: AppColors.darkGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Advantages:-',
                        style: AppTextStyle.boldTextStyle?.copyWith(
                          fontSize: AppDimension.b2,
                          color: AppColors.darkGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      Text(
                        '1. "AshaZaoa" App is designed in such a way that a car owner or a rent a car owner can easily manage all his vehicles, drivers and business accounts.\n\n2. You can also earn by hiring a car from "Cholo Zai" App to passengers.',
                        style: AppTextStyle.normalTextStyle?.copyWith(
                          color: AppColors.darkGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Register your car and driver by clicking',
                        style: AppTextStyle.normalTextStyle?.copyWith(
                          color: AppColors.darkGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppButton(
                            title: "Here",
                            borderColor: AppColors.primaryColor,
                            borderWidth: 1,
                            style: AppTextStyle.normalTextStyle!.copyWith(
                              color: AppColors.primaryColor,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.RENT_A_CAR_MAIN_SCREEN,
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
