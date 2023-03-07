import 'package:asa_zaoa/src/core/widgets/app_text_fields.dart';
import 'package:flutter/material.dart';

class AppDropDownButton extends StatelessWidget {
  final String? title;
  VoidCallback? onPressed;

  AppDropDownButton({Key? key, this.title ,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AppTextFiled(
        textEditingController: new TextEditingController(),
        isEnable: false,
        isCenter: true,
        hint: title,
        suffixIcon: Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
