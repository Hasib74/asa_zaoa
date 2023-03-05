import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_image_view.dart';

class RentACarAddTitle extends StatelessWidget {
  final String title;

  RentACarAddTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImageView(
              height: AppDimension.h4,
              width: AppDimension.h4,
              imageUrl: AppAssets.car_add_icon,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.h2,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
