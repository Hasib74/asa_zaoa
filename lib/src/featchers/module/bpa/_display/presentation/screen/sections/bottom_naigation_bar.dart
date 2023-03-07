import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/core/widgets/round_icon_button.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/bloc/bpa_display_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/utils/app_dimension.dart';
import '../../../domain/bpa_buttom_bar_menu.dart';

class BpaBottomNavigationBar extends StatelessWidget {
  const BpaBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BpaDisplayCubit, BpaDisplayState>(
        builder: (context, state) {
      BpaBottomBarMainMenu menu = BpaBottomBarMainMenu.home;

      if (state is BpaDisplayChanged) {
        menu = state.menu;
      }

      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.history,
              textColor: menu == BpaBottomBarMainMenu.history
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              iconColor: menu == BpaBottomBarMainMenu.history
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              title: "History",
              onPressed: () {
                context
                    .read<BpaDisplayCubit>()
                    .changeTab(BpaBottomBarMainMenu.history);
              },
            )),
            Expanded(
              child: AppIconWithTextButton(
                size: AppDimension.bottomBarIconSize,
                imageUrl: AppAssets.trip,
                textColor: menu == BpaBottomBarMainMenu.trip
                    ? AppColors.secondaryColor
                    : AppColors.primaryColor.withOpacity(1),
                iconColor: menu == BpaBottomBarMainMenu.trip
                    ? AppColors.secondaryColor
                    : AppColors.primaryColor.withOpacity(1),
                title: "Trip",
                onPressed: () {
                  context
                      .read<BpaDisplayCubit>()
                      .changeTab(BpaBottomBarMainMenu.trip);
                },
              ),
            ),
            Expanded(
                child: AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.home,
              textColor: menu == BpaBottomBarMainMenu.home
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              iconColor: menu == BpaBottomBarMainMenu.home
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              title: "Home",
              onPressed: () {
                context
                    .read<BpaDisplayCubit>()
                    .changeTab(BpaBottomBarMainMenu.home);
              },
            )),
            Expanded(
                child: AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.notification,
              textColor: menu == BpaBottomBarMainMenu.notification
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              iconColor: menu == BpaBottomBarMainMenu.notification
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              title: "Notification",
              onPressed: () {
                context
                    .read<BpaDisplayCubit>()
                    .changeTab(BpaBottomBarMainMenu.notification);
              },
            )),
            Expanded(
                child: AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.profile,
              textColor: menu == BpaBottomBarMainMenu.profile
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              iconColor: menu == BpaBottomBarMainMenu.profile
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor.withOpacity(1),
              title: "Profile",
              onPressed: () {
                context
                    .read<BpaDisplayCubit>()
                    .changeTab(BpaBottomBarMainMenu.profile);
              },
            )),
          ],
        ),
      );
    });
  }
}
