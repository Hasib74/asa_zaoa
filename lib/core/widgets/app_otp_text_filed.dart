import 'package:asa_zaoa/core/utils/app_colors.dart';
import 'package:asa_zaoa/core/widgets/app_text_fields.dart';
import 'package:flutter/material.dart';

class AppOtpTextFiled extends StatelessWidget {
  const AppOtpTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.shadowColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(42 / 2),
      ),
      child: Row(
        children: [
          Expanded(
              child: AppTextFiled(
            disabledBorderColor: AppColors.transparent,
            enabledBorderColor: AppColors.transparent,
            focusedBorderColor: AppColors.transparent,
            textEditingController: new TextEditingController(),
          )),
          Container(
            height: 42,
            width: 2,
            color: AppColors.shadowColor,
          ),
          Expanded(
              child: AppTextFiled(
            disabledBorderColor: AppColors.transparent,
            enabledBorderColor: AppColors.transparent,
            focusedBorderColor: AppColors.transparent,
            textEditingController: new TextEditingController(),
          )),
          Container(
            height: 42,
            width: 2,
            color: AppColors.shadowColor,
          ),
          Expanded(
              child: AppTextFiled(
            disabledBorderColor: AppColors.transparent,
            enabledBorderColor: AppColors.transparent,
            focusedBorderColor: AppColors.transparent,
            textEditingController: new TextEditingController(),
          )),
          Container(
            height: 42,
            width: 2,
            color: AppColors.shadowColor,
          ),
          Expanded(
              child: AppTextFiled(
            disabledBorderColor: AppColors.transparent,
            enabledBorderColor: AppColors.transparent,
            focusedBorderColor: AppColors.transparent,
            textEditingController: new TextEditingController(),
          )),
        ],
      ),
    );
  }
}
