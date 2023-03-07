import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class YourEarning extends StatelessWidget {
  VoidCallback? onTap;

  YourEarning({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(42),
            border: Border.all(color: AppColors.shadowColor, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your Earning",
                style: AppTextStyle.normalTextStyle,
              ),
              Text(
                "TK 0.00",
                style: AppTextStyle.boldTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
