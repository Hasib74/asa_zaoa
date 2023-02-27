import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../widgets/rent_a_car_driver_reg_form.dart';

class RentACarDriverRegistrationScreen extends StatelessWidget {
  RentACarDriverRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RentACarDriverRegForm(),
              SizedBox(
                height: 30,
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
                    title: "Register",
                    borderColor: AppColors.primaryColor,
                    borderWidth: 1,
                    style: AppTextStyle.normalTextStyle!.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.RENT_A_CAR_REG_SUCCESS_SCREEN,
                      );
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
