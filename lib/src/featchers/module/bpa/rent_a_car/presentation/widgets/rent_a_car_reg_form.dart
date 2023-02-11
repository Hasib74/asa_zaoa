import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class RentACarRegForm extends StatelessWidget {
  const RentACarRegForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Area :',
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            fontSize: AppDimension.b2,
                            color: AppColors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: Placeholder(
                            fallbackHeight: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Serial :',
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            fontSize: AppDimension.b2,
                            color: AppColors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: Placeholder(
                            fallbackHeight: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 3,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Column(
                    children: [
                      Expanded(child: Placeholder()),
                      Text(
                        'Car Photo',
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize: AppDimension.b2,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
                  Navigator.pop(context);
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
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  yearItemView({
    required String year,
    required Function() onTap,
    required bool selected,
    required double width,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: selected ? AppColors.secondaryColor : AppColors.white,
          border: Border.all(color: AppColors.lightGrey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Text(
          year,
          style: AppTextStyle.normalTextStyle!.copyWith(
            fontSize: AppDimension.h1,
            color: selected ? AppColors.white : AppColors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class BrandItem {
  final String iconUrl;
  final String title;

  BrandItem({required this.iconUrl, required this.title});
}
