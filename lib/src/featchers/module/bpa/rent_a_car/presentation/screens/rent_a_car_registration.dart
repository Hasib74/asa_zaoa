import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../widgets/rent_a_car_reg_form.dart';

class RentACarRegistrationScreen extends StatelessWidget {
  RentACarRegistrationScreen({Key? key}) : super(key: key);

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
                  Text(
                    'Toyota Premio 2023',
                    style: AppTextStyle.normalTextStyle!.copyWith(
                      fontSize: AppDimension.h1,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Total Passenger Capacity : 3',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              RentACarRegForm(),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "I do here by declared that, the information I have given above is correct and True. I've agreed with all the",
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        color: AppColors.grey,
                        fontSize: AppDimension.b2,
                      ),
                    ),
                    TextSpan(
                      text: ' Terms & Condition ',
                      style: AppTextStyle.boldTextStyle!.copyWith(
                        color: AppColors.secondaryColor,
                        fontSize: AppDimension.b2,
                      ),
                    ),
                    TextSpan(
                      text: "of RIDE Care.",
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        color: AppColors.grey,
                        fontSize: AppDimension.b2,
                      ),
                    ),
                  ],
                ),
              ),
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

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 35;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
