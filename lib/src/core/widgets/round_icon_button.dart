import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_colors.dart';
import '../utils/app_dimension.dart';
import 'app_image_view.dart';

class AppIconWithTextButton extends StatelessWidget {
  String? imageUrl;
  String? titile;
  Function()? onPressed;
  double? size;
  double? height;
  double? width;
  Color? iconColor;
  Color? textColor;
  bool isCircle;
  double? fontSize;
  TextStyle? textStyle;

  AppIconWithTextButton({
    Key? key,
    required this.imageUrl,
    this.titile,
    this.onPressed,
    this.size,
    this.height,
    this.width,
    this.iconColor,
    this.textColor,
    this.isCircle = false,
    this.fontSize,
    this.textStyle,
  }) : super(key: key);

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
                shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                border: isCircle
                    ? Border.all(
                        color: AppColors.shadowColorOne,
                        width: AppDimension.roundBorder)
                    : null,
              ),
              child: AppImageView(
                height: size ?? height ?? 120,
                width: size ?? width ?? 120,
                imageUrl: imageUrl,
                color: iconColor,
              ),
            ),
            AppSpaces.spacesHeight10,
            if (titile != null)
              Text(titile!,
                  style: textStyle !=null? textStyle: isCircle
                      ?  AppTextStyle.boldTextStyle
                      :   AppTextStyle.normalTextStyle!
                          .copyWith(color: textColor ,fontSize: fontSize)),
          ],
        ));
  }
}
