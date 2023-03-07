import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/core/widgets/bpa_app_bar.dart';
import 'package:asa_zaoa/src/featchers/drawer/screen/app_drawer.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/bloc/bpa_display_cubit.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/screen/sections/bottom_naigation_bar.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/screen/sections/view_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/bpa_buttom_bar_menu.dart';

class BpaDisplayScreen extends StatelessWidget {
  BpaDisplayScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: AppDrawer(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<BpaDisplayCubit, BpaDisplayState>(
                builder: (context, state) {
              Color backgroundColor = Colors.white;

              if (state is BpaDisplayChanged) {
                if (state.menu == BpaBottomBarMainMenu.notification) {
                  backgroundColor = AppColors.secondaryColor.withOpacity(0.5);
                } else if (state.menu == BpaBottomBarMainMenu.trip) {
                  backgroundColor = Colors.red;
                } else if (state.menu == BpaBottomBarMainMenu.history) {
                  backgroundColor = Colors.blue;
                } else if (state.menu == BpaBottomBarMainMenu.home) {
                  backgroundColor = AppColors.secondaryColor.withOpacity(0.5);
                }
              }

              return BpaAppBar(
                backgroundColor: backgroundColor,
                scaffoldKey: _scaffoldKey,
              );
            }),
            Expanded(child: ViewSection()),
            BpaBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
