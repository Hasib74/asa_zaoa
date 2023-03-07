import 'package:asa_zaoa/src/featchers/main/functions/main_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/dependencyInjection/app_dependency_injections.dart';
import '../../../core/themes/app_text_style.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_dimension.dart';
import '../../../core/widgets/app_image_view.dart';
import '../../drawer/screen/app_drawer.dart';
import '../bloc/main_bloc.dart';
import '../widgets/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await sl<MainFunctions>().willPopCallback(context);
      },
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.8,
          child: AppDrawer(),
        ),
        body: BlocListener<MainBloc, MainState>(
          listener: (context, state) {},
          child: BlocBuilder<MainBloc, MainState>(
            builder: (_, state) {
              if (state is MainScreenUpdateLoadingState) {
                return SizedBox();
              } else if (state is MainScreenUpdateState) {
                return Column(
                  children: [
                    Expanded(
                      child: SafeArea(
                        child: Column(
                          children: [
                            if (state.screen.canShowAppBar)
                              CustomAppBar(
                                leadingImageUrl: state.screen.leadingIconUrl,
                                titleText: state.screen.appBarTitleText,
                                titleWidget: state.screen.appBarTitleWidget,
                                onDrawerTap: state.screen.canShowMenuDrawer
                                    ? () {
                                        _scaffoldKey.currentState!.openEndDrawer();
                                      }
                                    : null,
                              ),
                            Expanded(
                              child: Container(
                                child: state.screen.body,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  //  state.screen.canShowBottomBar ? BpaBottomNavigationBar() : SizedBox(),
                  ],
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final String? leadingImageUrl;
  final String? titleText;
  final Widget? titleWidget;
  final Function()? onDrawerTap;

  const CustomAppBar({
    Key? key,
    this.leadingImageUrl,
    this.titleText,
    this.titleWidget,
    this.onDrawerTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          if (leadingImageUrl != null)
            AppImageView(
              height: AppDimension.h4,
              width: AppDimension.h4,
              imageUrl: leadingImageUrl,
            ),
          if (leadingImageUrl != null)
            SizedBox(
              width: 10,
            ),
          Expanded(
            child: titleWidget ??
                ((titleText?.isNotEmpty ?? false)
                    ? Text(titleText ?? "",
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize: AppDimension.h2 - 5,
                          color: AppColors.primaryColor,
                        ))
                    : SizedBox()),
          ),
          if (onDrawerTap != null)
            InkWell(
              onTap: onDrawerTap,
              child: SvgPicture.asset(AppAssets.drawer_menu),
            ),
        ],
      ),
    );
  }
}
