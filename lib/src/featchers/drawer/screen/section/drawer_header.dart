import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_button.dart';
import 'package:asa_zaoa/src/core/widgets/app_toggle_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_text_style.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "AshaZaoa Menu",
                style: AppTextStyle.boldTextStyle,
                textAlign: TextAlign.center,
              ),
              AppSpaces.spacesHeight15,
              Row(
                children: [
                  new AppButton(
                    title: "BPA MODE",
                    style: AppTextStyle.normalTextStyle,
                  ),
                  AppToggleSwitcher(
                    activeTitle: "ACTIVE",
                    deActiveTitle: "Offline",
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
