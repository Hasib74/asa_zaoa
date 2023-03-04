import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class DriverDeleteDialog extends StatelessWidget {
  DriverDeleteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
              "Remove Muhtasim Shakil From Your Driver List",
              style: AppTextStyle.boldTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.errorColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "DL: 4818514654981",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b1,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButton(
                title: "Confirm",
                borderColor: AppColors.errorColor,
                borderWidth: 1,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  color: AppColors.errorColor,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
