import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import 'app_country_picker_widgets.dart';

class AppTextFiled extends StatefulWidget {
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
  Function()? onTap;
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
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  bool? _isMusk = true;

  @override
  Widget build(BuildContext context) {
    if (widget.obscureText == true) {
      widget.suffixIcon = _maskIcon();
    }
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.9,
      height: widget.height ?? 50,
      child: GestureDetector(
        onTap: widget.onTap,
        child: TextField(
          maxLengthEnforcement: MaxLengthEnforcement.none,
          onEditingComplete: widget.onEditingComplete,
          textInputAction: widget.textInputAction,
          onChanged: (v) => widget.onValue!(v),
          obscureText: _isMusk! ? widget.obscureText : false,
          keyboardType: widget.textInputType ?? TextInputType.text,
          enabled: widget.isEnable,
          focusNode: widget.focusNode,
          //enabled: this.isEnable,
          controller: widget.textEditingController,
          maxLength: this.widget.maxLength,
          maxLines: widget.obscureText ? 1 : this.widget.maxLine,

          style: widget.maxLength == 1
              ? Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AppColors.shadowColor)
              : null,
          textAlign:
              widget.isCenter == true ? TextAlign.center : TextAlign.start,
          decoration: InputDecoration(
            counterText: "",
            hintText: widget.hint,
            hintStyle: AppTextStyle.hintStyle,
            contentPadding:
                widget.contentPadding ?? EdgeInsets.only(top: 20, left: 16 * 2),
            counter: null,
            filled: widget.backgroundColor != null,
            fillColor: widget.backgroundColor,

            labelText: widget.label,
            labelStyle: TextStyle(color: AppColors.shadowColor),
            errorBorder: widget.border ??
                OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.errorBorderColor ?? AppColors.errorColor,
                    ),
                    borderRadius: BorderRadius.circular(40)),
            focusedBorder: widget.border ??
                OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            widget.focusedBorderColor ?? AppColors.shadowColor),
                    borderRadius: BorderRadius.circular(40)),
            disabledBorder: widget.border ??
                OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: widget.disabledBorderColor ??
                            AppColors.shadowColor),
                    borderRadius: BorderRadius.circular(40)),
            enabledBorder: widget.border ??
                OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color:
                            widget.enabledBorderColor ?? AppColors.shadowColor),
                    borderRadius: BorderRadius.circular(40)),
            // border: UnderlineInputBorder(),
            prefixIcon: widget.isPhoneNumberSelectAble == true
                ? _selectPhoneNumber()
                : widget.prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SvgPicture.asset(widget.prefixIcon!),
                      )
                    : widget.prefixEnable
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
            suffixIcon: widget.suffixIcon,
          ),
        ),
      ),
    );
  }

  _maskIcon() {
    return InkWell(
        onTap: () {
          setState(() {
            _isMusk = !_isMusk!;
          });
          print(_isMusk);
        },
        child: _isMusk! ? Icon(Icons.visibility) : Icon(Icons.visibility_off));
  }

  _selectPhoneNumber() {
    return Container(
      width: 110,
      padding: const EdgeInsets.only(left: 16, right: 0),
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
