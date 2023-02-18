import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';

class AppListTileButton extends StatelessWidget {
  String? title;
  String? icon;

  VoidCallback? onTap;

  AppListTileButton({Key? key, this.title, this.icon , this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading: AppImageView(
          imageUrl: icon,
          width: 30,
          height: 30,
        ),
        title: Text(
          title!,
          style: AppTextStyle.semiBoldTextStyle,
        ));
  }
}
