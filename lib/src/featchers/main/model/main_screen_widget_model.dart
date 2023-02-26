import 'package:flutter/material.dart';

class MainScreenWidgetModel {
  final Widget body;
  final bool canShowBottomBar;
  final bool canShowAppBar;
  final String? leadingIconUrl;
  final String? appBarTitleText;
  final Widget? appBarTitleWidget;
  final bool canShowMenuDrawer;

  MainScreenWidgetModel({
    required this.body,
    this.canShowBottomBar = false,
    this.canShowAppBar = false,
    this.leadingIconUrl,
    this.appBarTitleText,
    this.appBarTitleWidget,
    this.canShowMenuDrawer = true,
  });
}
