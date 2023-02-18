import 'package:asa_zaoa/src/core/routes/app_routes.dart';
import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/featchers/drawer/screen/section/drawer_header.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/app_list_tile_button.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              AppSpaces.spacesHeight15,
              AppDrawerHeader(),
              Divider(),
              Expanded(
                child: ListView(
                  children: [
                    AppListTileButton(
                      icon: AppAssets.profile_icon_png,
                      title: "Profile",
                    ),
                    Divider(),
                    AppListTileButton(
                      icon: AppAssets.add_car_icon_png,
                      title: "Add Car",
                    ),
                    Divider(),
                    AppListTileButton(
                      icon: AppAssets.add_driver_icon_png,
                      title: "Add Driver",
                    ),
                    Divider(),
                    AppListTileButton(
                      icon: AppAssets.change_password_icon_png,
                      title: "Change Password",
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.RESET_PASSWORD_SCREEN);
                      },
                    ),
                    Divider(),
                    AppListTileButton(
                      icon: AppAssets.settings_icon_png,
                      title: "Settings",
                    ),
                    Divider(),
                    AppListTileButton(
                      icon: AppAssets.logout_icon_png,
                      title: "Log Out",
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
