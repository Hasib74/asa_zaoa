import 'package:asa_zaoa/core/themes/app_text_style.dart';
import 'package:asa_zaoa/core/utils/app_dimension.dart';
import 'package:asa_zaoa/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppRoundIconButton extends StatelessWidget {
  String? imageUrl;
  String? titile;
  Function()? onPressed;

  double? size;

  double? height;
  double? width;

  AppRoundIconButton(
      {Key? key,
      required this.imageUrl,
      this.titile,
      this.onPressed,
      this.size,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            elevation: MaterialStateProperty.all<double>(0)),
        onPressed: onPressed,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.shadowColorOne,
                    width: AppDimension.roundBorder),
              ),
              child: AppImageView(
                height: size ?? height ?? 120,
                width: size ?? width ?? 120,
                imageUrl: imageUrl,
              ),
            ),
            if (titile != null)
              Text(
                titile!,
                style: AppTextStyle.boldTextStyle,
              ),
          ],
        ));
  }
}
