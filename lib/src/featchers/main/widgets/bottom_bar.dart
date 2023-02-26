import 'dart:io';

import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/app_text_style.dart';
import '../../../core/utils/app_dimension.dart';
import '../../../core/utils/app_spaces.dart';
import '../../../core/widgets/app_image_view.dart';

class BpaBottomNavigationBar extends StatelessWidget {
  const BpaBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: Platform.isIOS ? 20 : 10,
        left: 0,
        right: 0,
      ),
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(
            color: AppColors.shadowColor.withOpacity(0.9),
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomBarButton(
            onPressed: () {},
            imageUrl: AppAssets.history,
            title: "HISTORY",
          ),
          BottomBarButton(
            onPressed: () {},
            imageUrl: AppAssets.trip,
            title: "TRIP",
          ),
          BottomBarButton(
            onPressed: () {},
            imageUrl: AppAssets.home,
            title: "HOME",
          ),
          BottomBarButton(
            onPressed: () {},
            imageUrl: AppAssets.notification,
            title: "NOTIFICATION",
          ),
          BottomBarButton(
            onPressed: () {},
            imageUrl: AppAssets.profile,
            title: "PROFILE",
          ),
        ],
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  final Function() onPressed;
  final String imageUrl;
  final String title;

  const BottomBarButton({
    Key? key,
    required this.onPressed,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: onPressed,
          child: Column(
            children: [
              Expanded(
                child: AppImageView(
                  imageUrl: imageUrl,
                  color: AppColors.darkGrey,
                ),
              ),
              AppSpaces.spacesHeight10,
              Text(
                title,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  color: AppColors.darkGrey,
                  fontSize: AppDimension.b1 - 2,
                ),
              ),
            ],
          )),
    );
  }
}
