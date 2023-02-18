import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_button.dart';
import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:asa_zaoa/src/core/widgets/app_text_fields.dart';
import 'package:flutter/material.dart';

//set up the app bar

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImageView(
              width: 60,
              height: 60,
              imageUrl: AppAssets.change_password_icon_png,
            ),
            AppSpaces.spacesHeight15,
            Text(
              "Set your new",
              style: AppTextStyle.normalTextStyle,
            ),
            Text(
              "Password",
              style: AppTextStyle.extraLargeTextStyle,
            ),
            AppSpaces.spacesHeight15,
            AppSpaces.spacesHeight15,
            AppTextFiled(
              textEditingController: new TextEditingController(),
              hint: "Current Password",
              obscureText: true,
              isCenter: true,
            ),
            AppSpaces.spacesHeight15,
            AppTextFiled(
              textEditingController: new TextEditingController(),
              hint: "New Password",
              obscureText: true,
              isCenter: true,
            ),
            AppSpaces.spacesHeight15,
            AppTextFiled(
              textEditingController: new TextEditingController(),
              hint: "Confirm Password",
              obscureText: true,
              isCenter: true,
            ),
            AppSpaces.spacesHeight15,
            AppButton(
              title: "Reset",
              width: 120,
            )
          ],
        ),
      ),
    );
  }
}
