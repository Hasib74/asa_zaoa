import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppToggleSwitcher extends StatefulWidget {
  String? activeTitle;
  String? deActiveTitle;
  Function(bool)? onChanged;

  double? width;

  AppToggleSwitcher(
      {Key? key,
      this.activeTitle,
      this.deActiveTitle,
      this.onChanged,
      this.width})
      : super(key: key);

  @override
  State<AppToggleSwitcher> createState() => _AppToggleSwitcherState();
}

class _AppToggleSwitcherState extends State<AppToggleSwitcher> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
        widget.onChanged!(isActive);
      },
      child: PhysicalModel(
        color: AppColors.shadowColor,
        elevation: 0.5,
        borderRadius: BorderRadius.all(Radius.circular(45)),
        child: Container(
          height: 40,
          width: widget.width ?? 124,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.shadowColor, width: 0.5),
            borderRadius: BorderRadius.circular(45),
            color: isActive
                ? AppColors.switcherActiveColor
                : AppColors.switcherDeActiveColor,
          ),
          child: Row(
            children: [
              AppSpaces.spacesWidth5,
              isActive
                  ? Text(
                      "  ${widget.activeTitle}  ",
                      style: AppTextStyle.semiBoldTextStyle!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                  : _toogleRoundButton(),
              Spacer(),
              isActive
                  ? _toogleRoundButton()
                  : Text("  ${widget.deActiveTitle}  "),
              AppSpaces.spacesWidth5,
            ],
          ),
        ),
      ),
    );
  }

  _toogleRoundButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 30,
      width: 30,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
              color: isActive
                  ? AppColors.shadowColor
                  : AppColors.switcherActiveColor,
              width: 2)),
    );
  }
}
