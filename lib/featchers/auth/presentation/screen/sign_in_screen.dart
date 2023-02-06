import 'package:asa_zaoa/core/themes/app_text_style.dart';
import 'package:asa_zaoa/core/utils/app_assets.dart';
import 'package:asa_zaoa/core/utils/app_colors.dart';
import 'package:asa_zaoa/core/utils/app_dimension.dart';
import 'package:asa_zaoa/core/widgets/app_button.dart';
import 'package:asa_zaoa/core/widgets/app_text_fields.dart';
import 'package:asa_zaoa/core/widgets/asa_zaoa_title.dart';
import 'package:asa_zaoa/core/widgets/round_icon_button.dart';
import 'package:asa_zaoa/featchers/auth/presentation/functions/sign_in_functions.dart';
import 'package:flutter/material.dart';

import '../../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../../core/helper/app_role_enum.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/app_spaces.dart';

class SignInScreen extends StatelessWidget {
  AppRoleEnum? role;

  SignInScreen({Key? key, this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(role);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            AsaZaoaTitle(
              title: "Log in to",
            ),
            AppSpaces.spacesHeight15,
            AppRoundIconButton(
              imageUrl: role == AppRoleEnum.BPA
                  ? AppAssets.bpa_icon
                  : AppAssets.driver_icon,
            ),
            Spacer(),
            AppTextFiled(
              hint: "XXX XXX XXX",
              textEditingController:
                  sl<SignInFunctions>().phoneNumberTextEditingController,
              isPhoneNumberSelectAble: true,
            ),
            AppSpaces.spacesHeight15,
            AppTextFiled(
                isCenter: true,
                hint: "*********",
                textEditingController:
                    sl<SignInFunctions>().passwordTextEditingController),
            AppSpaces.spacesHeight15,
            AppButton(
              title: "LogIn",
              onPressed: () {
                //sl<SignInFunctions>().signIn(context, role!);
              },
            ),
            AppSpaces.spacesHeight10,
            Text(
              "Forgot Password",
              style: AppTextStyle.normalTextStyle!
                  .copyWith(color: AppColors.textColorTwo),
            ),
            AppSpaces.spacesHeight10,
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    "Did not have an account?",
                    style: AppTextStyle.normalTextStyle!.copyWith(),
                  ),
                  AppSpaces.spacesHeight10,
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.SIGN_UP_SCREEN,
                        arguments: role,
                      );
                    },
                    child: Text(
                      "SignUp now",
                      style: AppTextStyle.normalTextStyle!
                          .copyWith(color: AppColors.textColorTwo),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
