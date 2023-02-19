import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/utils/app_overlay_dialog.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../widgets/toggle_button.dart';
import 'car_status_change_dialog.dart';

class CarDetailsDialog extends StatelessWidget {
  CarDetailsDialog({Key? key}) : super(key: key);

  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: CustomImageWidget(
              imageUrl:
                  "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:best,w_1200/cms/uploads/giz3atasiffnrc1fbbhx",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Toyota Hiace 2023",
              style: AppTextStyle.boldTextStyle!.copyWith(
                fontSize: AppDimension.h1,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Dhaka Metro kha 23-5678",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b3,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Registration Copy",
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize: AppDimension.b1,
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5),
                    AspectRatio(
                      aspectRatio: 1,
                      child: CustomImageWidget(
                        imageUrl:
                            "https://teachernews.in/wp-content/uploads/2021/02/TS-SSC-New-Exam-Pattern-2021-653x1024.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Number Plate",
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize: AppDimension.b1,
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),
                    AspectRatio(
                      aspectRatio: 1,
                      child: CustomImageWidget(
                        imageUrl:
                            "https://static-01.daraz.com.bd/p/7b76b79b2546b6da13399eba82822520.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return ToggleButton(
              text: isActive ? "ACTIVE" : "INACTIVE",
              onChanged: () {
                Overlayment.show(
                  context: context,
                  child: CarStatusChangeDialog(
                    currentActiveStatus: isActive,
                    onChange: (val) {
                      setState(() => isActive = val);
                    },
                  ),
                );
              },
              isActive: isActive,
            );
          }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
