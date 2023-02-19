import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_dimension.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final Function() onChanged;
  final bool isActive;

  ToggleButton({
    Key? key,
    required this.text,
    required this.onChanged,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onChanged,
          child: PhysicalModel(
            color: AppColors.shadowColor,
            elevation: 0.5,
            borderRadius: BorderRadius.all(Radius.circular(45)),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.shadowColor, width: 0.5),
                borderRadius: BorderRadius.circular(45),
                color: isActive
                    ? AppColors.switcherActiveColor
                    : AppColors.switcherDeActiveColor,
              ),
              padding: EdgeInsets.all(2),
              child: Row(
                children: [
                  isActive ? _text() : _roundButton(),
                  isActive ? _roundButton() : _text(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _roundButton() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }

  _text() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        text,
        style: AppTextStyle.boldTextStyle!.copyWith(
          color: Colors.white,
          fontSize: AppDimension.b1 - 2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
