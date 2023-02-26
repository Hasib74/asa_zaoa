import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class CarDeleteDialog extends StatelessWidget {
  CarDeleteDialog({Key? key}) : super(key: key);

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
          AspectRatio(
            aspectRatio: 1.5,
            child: CustomImageWidget(
              imageUrl:
                  "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:best,w_1200/cms/uploads/giz3atasiffnrc1fbbhx",
              fit: BoxFit.fill,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Toyota Hiace 2023",
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
              "Dhaka Metro kha 23-5678",
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
                title: "Delete",
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
