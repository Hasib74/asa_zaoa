import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';

class AppTextFiled extends StatelessWidget {
  String? hint;

  TextEditingController textEditingController;

  String? prefixIcon;
  bool prefixEnable;

  String? suffixIcon;

  Color? focusedBorderColor = AppColors.primaryColor;
  Color? errorBorderColor;

  Color? enabledBorderColor = AppColors.shadowColor;
  Color? disabledBorderColor;

  bool isEnable;

  String? label;

  FocusNode? focusNode;

  int? maxLine;

  int? maxLength;
  bool? isCenter;

  double? height;

  double? width;

  TextInputType? textInputType;

  bool? obscureText;

  TextInputAction? textInputAction;
  Function(String)? onValue;

  Function()? onEditingComplete;

  EdgeInsets? contentPadding;

  bool? isPhoneNumberSelectAble;

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
    this.isPhoneNumberSelectAble: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      height: height ?? 50,
      child: TextField(
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction,
        onChanged: (v) => onValue!(v),
        obscureText: obscureText!,
        keyboardType: textInputType ?? TextInputType.text,
        enabled: isEnable,
        focusNode: focusNode,
        //enabled: this.isEnable,
        controller: textEditingController,
        maxLength: this.maxLength,
        maxLines: obscureText! ? 1 : this.maxLine,

        style: maxLength == 1
            ? Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: AppColors.shadowColor)
            : null,
        textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
        decoration: InputDecoration(
          hintText: hint,
          contentPadding:
              contentPadding ?? EdgeInsets.only(top: 20, left: 16 * 2),
          counter: null,

          labelText: label,
          labelStyle: TextStyle(color: AppColors.shadowColor),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: errorBorderColor ?? AppColors.errorColor,
              ),
              borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: focusedBorderColor ?? AppColors.shadowColor),
              borderRadius: BorderRadius.circular(40)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: disabledBorderColor ?? AppColors.shadowColor),
              borderRadius: BorderRadius.circular(40)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: enabledBorderColor ?? AppColors.shadowColor),
              borderRadius: BorderRadius.circular(40)),
          // border: UnderlineInputBorder(),
          prefixIcon:
              isPhoneNumberSelectAble != null && isPhoneNumberSelectAble == true
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
          suffixIcon: suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(suffixIcon!))
              : null,
        ),
      ),
    );
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
      child: CountryPhoneCodePicker.withDefaultSelectedCountry(
        defaultCountryCode:
            Country(name: 'BD', countryCode: 'BD', phoneCode: '+880'),
        borderRadius: 0,
        borderWidth: 0,
        borderColor: Colors.transparent,
        style: const TextStyle(fontSize: 16, color: Colors.green),
        searchBarHintText: 'Search by name',
        flagWidth: 25,
        flagHeight: 20,
        width: 60,
      ),
    );
  }
}
