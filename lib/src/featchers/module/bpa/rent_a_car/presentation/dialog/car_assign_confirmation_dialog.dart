import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class CarAssignConfirmationDialog extends StatelessWidget {
  CarAssignConfirmationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              FractionallySizedBox(
                widthFactor: .4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CustomImageWidget(
                    imageUrl:
                        "https://img.freepik.com/premium-photo/cute-baby-panda-bear-with-big-eyes-3d-rendering-cartoon-illustration_691560-4917.jpg?w=2000",
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Muhtasim Shakil Will Be Driving",
                  style: AppTextStyle.boldTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 3),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Toyota Hiace 2023",
                  style: AppTextStyle.boldTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 3),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Dhaka Metro kha 23-5678",
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b1,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppButton(
                    title: "Confirm",
                    borderColor: AppColors.primaryColor,
                    borderWidth: 1,
                    style: AppTextStyle.normalTextStyle!.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      sl<MainFunctions>().willPopCallback(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.clear),
          ),
        )
      ],
    );
  }
}
