import 'package:flutter/material.dart';
import '../../../../core/helper/app_role_enum.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_text_style.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_spaces.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_otp_text_filed.dart';
import '../../../../core/widgets/app_text_fields.dart';
import '../../../../core/widgets/asa_zaoa_title.dart';
import '../../../../core/widgets/round_icon_button.dart';

class OtpVerificationScreen extends StatelessWidget {
  AppRoleEnum? role;

  OtpVerificationScreen({Key? key, this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            AsaZaoaTitle(
              title: "Verify account",
            ),
            AppSpaces.spacesHeight15,
            AppRoundIconButton(
              imageUrl: role == AppRoleEnum.BPA
                  ? AppAssets.bpa_icon
                  : AppAssets.driver_icon,
            ),
            Spacer(),
            Column(
              children: [
                Text("We have sent a verification code to ",
                    textAlign: TextAlign.center),
                AppSpaces.spacesHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "+966 5XX XXX XXX.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(" Put otp to verify", textAlign: TextAlign.center)
                  ],
                ),
                AppSpaces.spacesHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't get code? ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    Text("Resend",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColorTwo))
                  ],
                ),
                AppSpaces.spacesHeight10,
                AppSpaces.spacesHeight10,
              ],
            ),
            AppSpaces.spacesHeight35,
            AppOtpTextFiled(),
            AppSpaces.spacesHeight35,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I Accept all the ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                Text("Terms & Conditions",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColorTwo))
              ],
            ),
            Spacer(),
            AppButton(
              color: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
              title: "Verify",
              onPressed: () {
                //sl<SignInFunctions>().signIn(context, role!);
              },
            ),
            Spacer(),
            AppSpaces.spacesHeight10,
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    "Already have an account?",
                    style: AppTextStyle.normalTextStyle!.copyWith(),
                  ),
                  AppSpaces.spacesHeight10,
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.LOGIN_SCREEN,
                        arguments: role,
                      );
                    },
                    child: Text(
                      "SignIn now",
                      style: AppTextStyle.normalTextStyle!
                          .copyWith(color: AppColors.textColorTwo),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
