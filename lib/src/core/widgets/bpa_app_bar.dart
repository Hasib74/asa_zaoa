import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';
import 'app_toggle_widgets.dart';

class BpaAppBar extends StatelessWidget {
  Color? backgroundColor;
  GlobalKey<ScaffoldState>? scaffoldKey = GlobalKey<ScaffoldState>();

  BpaAppBar({Key? key, this.backgroundColor, this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Colors.white,
      //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: Row(
          children: [
            AppSpaces.spacesWidth15,
            AppToggleSwitcher(
              activeTitle: "Online",
              deActiveTitle: "Offline",
              onChanged: (value) {},
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  scaffoldKey!.currentState!.openEndDrawer();
                },
                child: SvgPicture.asset(AppAssets.drawer_menu)),
            AppSpaces.spacesWidth15,
          ],
        ),
      ),
    );
  }
}
