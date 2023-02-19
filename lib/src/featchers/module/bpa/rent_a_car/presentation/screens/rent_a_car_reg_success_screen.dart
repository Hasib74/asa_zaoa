import 'package:asa_zaoa/src/core/utils/app_dimension.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';

class RentACarRegSuccessScreen extends StatelessWidget {
  const RentACarRegSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.secondaryColor,
                    width: 7,
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.done_rounded,
                  size: 120,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Car Added Successfully',
                style: AppTextStyle.normalTextStyle?.copyWith(
                  fontSize: AppDimension.h3,
                  color: AppColors.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
