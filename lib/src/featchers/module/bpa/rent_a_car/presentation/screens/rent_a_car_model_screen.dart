import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:asa_zaoa/src/featchers/main/route/route_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../widgets/rent_a_car_model_list.dart';

class RentACarModelScreen extends StatelessWidget {
  RentACarModelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 200),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageWidget(
                      imageUrl:
                          "https://image.similarpng.com/very-thumbnail/2020/09/Toyota-logo-icon-on-transparent--PNG.png",
                      fit: BoxFit.fitHeight,
                      height: 30),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Toyota',
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            fontSize: AppDimension.b3,
                            color: AppColors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' > Select Model',
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            fontSize: AppDimension.b3,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RentACarModelList(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    title: "Back",
                    borderColor: AppColors.primaryColor,
                    borderWidth: 1,
                    style: AppTextStyle.normalTextStyle!.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    onPressed: () {
                      sl<MainFunctions>().willPopCallback(context);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AppButton(
                    title: "Next",
                    borderColor: AppColors.primaryColor,
                    borderWidth: 1,
                    style: AppTextStyle.normalTextStyle!.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    onPressed: () {
                      RouteController(context).goToRentACarYearScreen();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
