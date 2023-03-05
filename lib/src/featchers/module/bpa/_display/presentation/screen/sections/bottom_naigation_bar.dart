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
    return BlocBuilder<BpaDisplayCubit, BpaDisplayState>(builder: (context, state) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.trip,
              textColor: menu == BpaBottomBarMainMenu.trip
                  ? AppColors.textColorTwo
                  : AppColors.textColorTwo.withOpacity(0.4),
              iconColor: menu == BpaBottomBarMainMenu.trip
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.4),
              title: "Trip",
              onPressed: () {
                context.read<BpaDisplayCubit>().changeTab(BpaBottomBarMainMenu.trip);
              },
            ),
            AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.home,
              textColor: menu == BpaBottomBarMainMenu.home
                  ? AppColors.textColorTwo
                  : AppColors.textColorTwo.withOpacity(0.4),
              iconColor: menu == BpaBottomBarMainMenu.home
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.4),
              title: "Home",
              onPressed: () {
                context.read<BpaDisplayCubit>().changeTab(BpaBottomBarMainMenu.home);
              },
            ),
            AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.history,
              textColor: menu == BpaBottomBarMainMenu.history
                  ? AppColors.textColorTwo
                  : AppColors.textColorTwo.withOpacity(0.4),
              iconColor: menu == BpaBottomBarMainMenu.history
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.4),
              title: "History",
              onPressed: () {
                context.read<BpaDisplayCubit>().changeTab(BpaBottomBarMainMenu.history);
              },
            ),
            AppIconWithTextButton(
              size: AppDimension.bottomBarIconSize,
              imageUrl: AppAssets.dash_board,
              textColor: menu == BpaBottomBarMainMenu.dashBoard
                  ? AppColors.textColorTwo
                  : AppColors.textColorTwo.withOpacity(0.4),
              iconColor: menu == BpaBottomBarMainMenu.dashBoard
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.4),
              title: "DashBoard",
              onPressed: () {
                context.read<BpaDisplayCubit>().changeTab(BpaBottomBarMainMenu.dashBoard);
              },
            ),
          ],
        ),
      );
    });
  }
}
