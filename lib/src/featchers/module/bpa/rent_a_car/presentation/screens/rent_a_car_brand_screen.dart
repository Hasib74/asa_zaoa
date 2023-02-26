import 'package:asa_zaoa/src/featchers/main/route/route_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../widgets/rent_a_car_brand_list.dart';

class RentACarBrandScreen extends StatelessWidget {
  RentACarBrandScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  children: [
                    Text(
                      "Select Brand",
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        fontSize: AppDimension.b3,
                        color: AppColors.darkGrey.withOpacity(.5),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RentACarBrandList(),
                    AppButton(
                      width: MediaQuery.of(context).size.width,
                      title: "Other",
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        color: AppColors.darkGrey,
                      ),
                      borderColor: AppColors.shadowColorOne,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppButton(
                          title: "Next",
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          borderColor: AppColors.primaryColor,
                          borderWidth: 1,
                          onPressed: () {
                            RouteController(context).goToRentACarModelScreen();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
