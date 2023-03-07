import 'package:flutter/material.dart';

import '../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../core/helper/constantClasses/app_role_enum.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_text_style.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_fields.dart';
import '../../../../core/widgets/asa_zaoa_title.dart';
import '../../../../core/widgets/round_icon_button.dart';
import '../functions/sign_up_functions.dart';

class SignUpScreen extends StatelessWidget {
  AppRoleEnum? role;

  SignUpScreen({Key? key, this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            AsaZaoaTitle(
              title: "Sign up to",
            ),
            AppSpaces.spacesHeight15,
            AppIconWithTextButton(
              isCircle: true,
              imageUrl: role == AppRoleEnum.BPA
                  ? AppAssets.bpa_icon
                  : AppAssets.driver_icon,
            ),
            Spacer(),
            AppTextFiled(
              hint: "XXX XXX XXX",
              textEditingController:
                  sl<SignUpFunctions>().phoneNumberTextEditingController,
              isPhoneNumberSelectAble: true,
            ),
            AppSpaces.spacesHeight15,
            AppTextFiled(
                obscureText: true,
                isCenter: true,
                hint: "Set Password",
                textEditingController:
                    sl<SignUpFunctions>().passwordTextEditingController),
            AppSpaces.spacesHeight15,
            AppButton(
              title: "Next",
              onPressed: () {
                //sl<SignInFunctions>().signIn(context, role!);
                Navigator.pushNamed(context, AppRoutes.OTP_VERIFICATION_SCREEN,
                    arguments: role);
              },
            ),
            AppSpaces.spacesHeight10,
            AppSpaces.spacesHeight10,
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    "Already have an account?",
                    style: AppTextStyle.normalTextStyle!.copyWith(),
                  ),
                  AppSpaces.spacesHeight10,
                  Text(
                    "Sign in now",
                    style: AppTextStyle.normalTextStyle!
                        .copyWith(color: AppColors.textColorTwo),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
    ;
  }
}
