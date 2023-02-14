import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../screens/rent_a_car_main_screen.dart';

class DriverItemView extends StatelessWidget {
  final DriverItem item;

  const DriverItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.shadowColor,
          width: 2,
        ),
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 30),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomImageWidget(
                imageUrl: item.image,
                fit: BoxFit.fill,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  item.name,
                  style: AppTextStyle.boldTextStyle!.copyWith(
                    fontSize: AppDimension.b3,
                    color: AppColors.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  item.phone,
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    CarListActionButton(
                      icon: Icons.edit_outlined,
                      title: "EDIT",
                      onTap: () {},
                    ),
                    CarListActionButton(
                      icon: Icons.delete_outline,
                      title: "DELETE",
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarListActionButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;

  const CarListActionButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.primaryColor,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                title,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b1,
                  color: AppColors.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
