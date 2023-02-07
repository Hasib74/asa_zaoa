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
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppIconWithTextButton(
            size: AppDimension.bottomBarIconSize,
            imageUrl: AppAssets.trip,
            textColor: AppColors.textColorTwo,
            iconColor: AppColors.primaryColor,
            titile: "Trip",
            onPressed: () {
              context
                  .read<BpaDisplayCubit>()
                  .changeTab(BpaBottomBarMainMenu.trip);
            },
          ),
          AppIconWithTextButton(
            size: AppDimension.bottomBarIconSize,
            imageUrl: AppAssets.home,
            textColor: AppColors.textColorTwo,
            iconColor: AppColors.primaryColor,
            titile: "Home",
            onPressed: () {
              context
                  .read<BpaDisplayCubit>()
                  .changeTab(BpaBottomBarMainMenu.home);
            },
          ),
          AppIconWithTextButton(
            size: AppDimension.bottomBarIconSize,
            imageUrl: AppAssets.history,
            textColor: AppColors.textColorTwo,
            iconColor: AppColors.primaryColor,
            titile: "History",
            onPressed: () {
              context
                  .read<BpaDisplayCubit>()
                  .changeTab(BpaBottomBarMainMenu.history);
            },
          ),
          AppIconWithTextButton(
            size: AppDimension.bottomBarIconSize,
            imageUrl: AppAssets.dash_board,
            textColor: AppColors.textColorTwo,
            iconColor: AppColors.primaryColor,
            titile: "DashBoard",
            onPressed: () {
              context
                  .read<BpaDisplayCubit>()
                  .changeTab(BpaBottomBarMainMenu.dashBoard);
            },
          ),
        ],
      );
    });
  }
}
