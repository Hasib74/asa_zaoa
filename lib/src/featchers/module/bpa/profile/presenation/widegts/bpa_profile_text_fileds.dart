import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_text_fields.dart';
import 'package:flutter/material.dart';

class BpaProfileTextFiled extends StatelessWidget {
  String? name;

  String? hint;

  TextEditingController? controller;

  BpaProfileTextFiled({Key? key, this.name, this.controller, this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSpaces.spacesWidth15,
        Expanded(
          flex: 1,
          child: Text(
            name!,
            style: AppTextStyle.normalTextStyle,
          ),
        ),
        AppSpaces.spacesWidth15,
        Expanded(
          flex: 3,
          child: AppTextFiled(
            textEditingController: controller!,
            hint: hint,
            isCenter: true,

          ),
        ),
        AppSpaces.spacesWidth15,
      ],
    );
  }
}
