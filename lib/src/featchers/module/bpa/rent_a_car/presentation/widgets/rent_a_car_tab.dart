import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_image_view.dart';

class RentACarTab extends StatelessWidget {
  final Function() onCarTap, onDriverTap;
  final bool isCarSelected;

  const RentACarTab({
    Key? key,
    required this.onCarTap,
    required this.onDriverTap,
    required this.isCarSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimension.b2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimension.b2),
          border: Border.all(
            color: AppColors.shadowColor,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: RentACarTabButton(
                icon: AppAssets.car_icon,
                title: "MY CAR",
                selected: isCarSelected,
                onTap: onCarTap,
              ),
            ),
            Expanded(
              child: RentACarTabButton(
                icon: AppAssets.driver_icon_2,
                title: "DRIVER",
                selected: !isCarSelected,
                onTap: onDriverTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RentACarTabButton extends StatelessWidget {
  final String icon;
  final String title;
  final bool selected;
  final Function() onTap;

  const RentACarTabButton({
    super.key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: selected ? AppColors.secondaryColor : Colors.transparent,
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImageView(
              height: AppDimension.h3,
              width: AppDimension.h3,
              imageUrl: icon,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b1,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                color: selected ? AppColors.white : AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
