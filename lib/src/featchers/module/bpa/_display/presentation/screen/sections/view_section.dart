import 'package:asa_zaoa/src/featchers/module/bpa/_display/domain/bpa_buttom_bar_menu.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/bloc/bpa_display_cubit.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/dashBoard/presentation/screen/dash_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewSection extends StatelessWidget {
  const ViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BpaDisplayCubit, BpaDisplayState>(builder: (context, state) {
      BpaBottomBarMainMenu menu = BpaBottomBarMainMenu.home;

      if (state is BpaDisplayChanged) {
        menu = state.menu;
      }

      switch (menu) {
        case BpaBottomBarMainMenu.trip:
          return Container(
            color: Colors.red,
          );
        case BpaBottomBarMainMenu.home:
          return Container(
            color: Colors.green,
          );
        case BpaBottomBarMainMenu.history:
          // TODO: Handle this case.
          break;
        case BpaBottomBarMainMenu.dashBoard:
          // TODO: Handle this case.
          return DashBoardScreen();
      }

      return Container();
    });
  }
}
