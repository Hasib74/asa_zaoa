import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/themes/app_text_style.dart';
import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/app_spaces.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "HASIB",
                  style: AppTextStyle.boldTextStyle,
                ),
                AppSpaces.spacesHeight5,
                Text(
                  "BPA ID : 1234567890",
                  style: AppTextStyle.semiBoldTextStyle,
                ),
                AppSpaces.spacesHeight15,
                AppSpaces.spacesHeight15,
              ],
            ),
          ),
        ),
        Positioned(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    height: MediaQuery.of(context).size.width * 0.35,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: AppImageView(
                      imageUrl: AppAssets.user_png,
                      height: MediaQuery.of(context).size.width * 0.35,
                      width: MediaQuery.of(context).size.width * 0.35,
                    )),
              ),
              Positioned(
                  bottom: 0.0,
                  right: 16,
                  child: AppImageView(
                    imageUrl: AppAssets.camera_png,
                  ))
            ],
          ),
          bottom: 0,
          right: 16,
        )
      ],
    );
  }
}
