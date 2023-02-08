import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  String? title;

  Function()? onPressed;
  Color? color;
  Color? textColor;
  double? height;
  double? width;
  double? radius;
  double? fontSize;
  FontWeight? fontWeight;

  AppButton({
    Key? key,
    this.title,
    this.onPressed,
    this.color,
    this.textColor,
    this.height,
    this.width,
    this.radius,
    this.fontSize,
    this.fontWeight,
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
          width: width ?? 150,
          height: height ?? 50,
          decoration: BoxDecoration(
            color: color ?? AppColors.white,
            borderRadius:
                BorderRadius.circular(height != null ? height! / 2 : 25),
            border: Border.all(
              color: color ?? AppColors.shadowColor,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              title ?? '',
              style: AppTextStyle.largeTextStyle!.copyWith(
                color: textColor ?? AppColors.black,
              ),
            ),
          )),
    );
  }
}
