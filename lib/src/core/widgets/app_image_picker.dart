import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';

class AppImagePicker extends StatelessWidget {
  const AppImagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Row(
        children: [
          AppIconWithTextButton(
              imageUrl: AppAssets.camera_icon_png, onPressed: () {}),
          AppIconWithTextButton(
              imageUrl: AppAssets.gallery_png, onPressed: () {}),
        ],
      ),
    );
  }
}
