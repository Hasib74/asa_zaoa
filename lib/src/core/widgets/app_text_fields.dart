import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import 'app_country_picker_widgets.dart';

class AppTextFiled extends StatelessWidget {
  String? hint;

  TextEditingController textEditingController;

  String? prefixIcon;
  bool prefixEnable;

  Widget? suffixIcon;

  Color? focusedBorderColor = AppColors.primaryColor;
  Color? errorBorderColor;

  Color? enabledBorderColor = AppColors.shadowColor;
  Color? disabledBorderColor;

  Color? backgroundColor;

  bool isEnable;

  String? label;

  FocusNode? focusNode;

  int? maxLine;

  int? maxLength;
  bool isCenter;

  double? height;

  double? width;

  TextInputType? textInputType;

  bool obscureText;

  TextInputAction? textInputAction;
  Function(String)? onValue;

  Function()? onEditingComplete;

  EdgeInsets? contentPadding;

  bool isPhoneNumberSelectAble;

  bool isBorderEnable;
  bool Function()? onTap;
  InputBorder? border;

  Alignment? align;

  AppTextFiled({
    Key? key,
    this.prefixEnable = false,
    this.suffixIcon,
    this.hint,
    this.focusedBorderColor,
    this.prefixIcon,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.disabledBorderColor,
    this.backgroundColor,
    this.isEnable = true,
    required this.textEditingController,
    this.label,
    this.focusNode,
    this.maxLine,
    this.maxLength,
    this.isCenter = false,
    this.width,
    this.height,
    this.textInputType,
    this.obscureText = false,
    this.onValue,
    this.textInputAction,
    this.onEditingComplete,
    this.contentPadding,
    this.isPhoneNumberSelectAble = false,
    this.isBorderEnable = true,
    this.onTap,
    this.border,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (obscureText == true) {
      suffixIcon = _maskIcon();
    }
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      height: height ?? 50,
      child: TextField(
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction,
        onChanged: (v) => onValue!(v),
        obscureText: obscureText,
        keyboardType: textInputType ?? TextInputType.text,
        enabled: isEnable,
        focusNode: focusNode,
        //enabled: this.isEnable,
        controller: textEditingController,
        maxLength: this.maxLength,
        maxLines: obscureText ? 1 : this.maxLine,

        style: maxLength == 1
            ? Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: AppColors.shadowColor)
            : null,
        textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTextStyle.hintStyle,
          contentPadding:
              contentPadding ?? EdgeInsets.only(top: 20, left: 16 * 2),
          counter: null,
          filled: backgroundColor != null,
          fillColor: backgroundColor,

          labelText: label,
          labelStyle: TextStyle(color: AppColors.shadowColor),
          errorBorder: border ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                    color: errorBorderColor ?? AppColors.errorColor,
                  ),
                  borderRadius: BorderRadius.circular(40)),
          focusedBorder: border ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: focusedBorderColor ?? AppColors.shadowColor),
                  borderRadius: BorderRadius.circular(40)),
          disabledBorder: border ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: disabledBorderColor ?? AppColors.shadowColor),
                  borderRadius: BorderRadius.circular(40)),
          enabledBorder: border ??
              OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: enabledBorderColor ?? AppColors.shadowColor),
                  borderRadius: BorderRadius.circular(40)),
          // border: UnderlineInputBorder(),
          prefixIcon: isPhoneNumberSelectAble == true
              ? _selectPhoneNumber()
              : prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(prefixIcon!),
                    )
                  : prefixEnable
                      ? SizedBox(
                          width: 90,
                          child: Row(
                            children: [
                              // Image(image: AssetImage(AppAssets.bd)),
                              const Text(" +880 "),
                            ],
                          ),
                        )
                      : null,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

  _maskIcon() {


    bool isMusk;
    return Icon(Icons.visibility_off);
  }

  _selectPhoneNumber() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: AppColors.shadowColor,
            width: 2,
          ),
        ),
      ),
      child: AppCountryPickerWidgets(
        onSelectedCountryCode: (code) {
          print(code);
        },
        onSelectedCountryName: (country) {
          print(country);
        },
      ),
    );
  }
}
