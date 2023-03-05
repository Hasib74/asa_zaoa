import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_image_view.dart';

class RentACarTitle extends StatelessWidget {
  RentACarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImageView(
            height: AppDimension.h3,
            width: AppDimension.h3,
            imageUrl: AppAssets.rent_a_car_icon,
          ),
          SizedBox(
            width: 10,
          ),
          // Text(
          //   "AsaZaoa",
          //   style: AppTextStyle.boldTextStyle!.copyWith(
          //       fontSize: AppDimension.h3, fontWeight: FontWeight.w900),
          // ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'RENT',
                  style: AppTextStyle.boldTextStyle!.copyWith(fontSize: AppDimension.h1),
                ),
                TextSpan(
                  text: ' A CAR',
                  style: AppTextStyle.normalTextStyle!.copyWith(fontSize: AppDimension.h1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
