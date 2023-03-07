import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_colors.dart';
import '../utils/app_dimension.dart';
import 'app_image_view.dart';

class AppIconWithTextButton extends StatelessWidget {
  String? imageUrl;
  String? title;
  Function()? onPressed;
  double? size;
  double? height;
  double? width;
  Color? iconColor;
  Color? textColor;
  bool isCircle;
  double? fontSize;
  TextStyle? textStyle;
  bool? inCircle;

  BoxFit? fit;

  AppIconWithTextButton(
      {Key? key,
      required this.imageUrl,
      this.title,
      this.onPressed,
      this.size,
      this.height,
      this.width,
      this.iconColor,
      this.textColor,
      this.isCircle = false,
      this.fontSize,
      this.textStyle,
      this.inCircle,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            elevation: MaterialStateProperty.all<double>(0)),
        onPressed: onPressed,
        child: inCircle != null && inCircle!
            ? Container(

                height: size ?? height ?? 120,
                width: size ?? width ?? 120,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: AppColors.shadowColorOne,
                      width: AppDimension.roundBorder),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                        child: AppImageView(
                      imageUrl: imageUrl,
                      color: iconColor,
                      fit: fit ?? BoxFit.cover,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(title!, style: AppTextStyle.semiBoldTextStyle!.copyWith(fontSize: 14)),
                    )
                  ],
                ),
              )
            : Column(
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
                  if (title != null)
                    Text(
                      title!,
                      style: textStyle != null
                          ? textStyle
                          : isCircle
                              ? AppTextStyle.boldTextStyle
                              : AppTextStyle.normalTextStyle!.copyWith(
                                  color: textColor,
                                  fontSize: fontSize,
                                ),
                    ),
                ],
              ));
  }
}
