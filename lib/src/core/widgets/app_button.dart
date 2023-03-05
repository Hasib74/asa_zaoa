import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  String? title;

  Function()? onPressed;
  Color? color, textColor, borderColor;
  double? height;
  double? width;
  double? radius;
  double? fontSize;
  double? borderWidth;
  FontWeight? fontWeight;
  TextStyle? style;

  AppButton({
    Key? key,
    this.title,
    this.onPressed,
    this.color,
    this.textColor,
    this.borderColor,
    this.height,
    this.width,
    this.radius,
    this.fontSize,
    this.borderWidth,
    this.fontWeight,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(
              vertical: height == null ? 10 : 0, horizontal: width == null ? 30 : 0),
          decoration: BoxDecoration(
            color: color ?? AppColors.white,
            borderRadius: BorderRadius.circular(height != null ? height! / 2 : 25),
            border: Border.all(
              color: borderColor ?? AppColors.shadowColor,
              width: borderWidth ?? 2,
            ),
          ),
          child: Center(
            child: Text(
              title ?? '',
              style: style ??
                  AppTextStyle.largeTextStyle!.copyWith(
                    color: textColor ?? AppColors.black,
                  ),
            ),
          )),
    );
  }
}
