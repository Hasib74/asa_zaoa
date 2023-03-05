import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class AppPhotoPicker extends StatelessWidget {
  final String? title;

  const AppPhotoPicker({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.shadowColor,
          width: 2,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImageView(
            imageUrl: AppAssets.camera_icon_png,
            width: 35,
            height: 35,
          ),
          Text(
            title ?? '',
            style: AppTextStyle.smallTextStyle,
          )
        ],
      )),
    );
  }
}
