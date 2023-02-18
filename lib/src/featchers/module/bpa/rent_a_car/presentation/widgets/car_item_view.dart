import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/utils/app_overlay_dialog.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../dialog/car_details_dialog.dart';
import '../screens/rent_a_car_main_screen.dart';

class CarItemView extends StatelessWidget {
  final CarItem item;

  const CarItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Overlayment.show(
          context: context,
          child: CarDetailsDialog(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.shadowColor,
            width: 2,
          ),
        ),
        padding: EdgeInsets.only(top: 10, bottom: 5),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1.5,
                      // child: Placeholder(),
                      child: CustomImageWidget(
                        imageUrl: item.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          item.title,
                          style: AppTextStyle.boldTextStyle!.copyWith(
                            fontSize: AppDimension.b3,
                            color: AppColors.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Text(
                          item.subtitle,
                          style: AppTextStyle.normalTextStyle!.copyWith(
                            fontSize: AppDimension.b2,
                            color: AppColors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                  icon: Icons.person_add_alt_1_outlined,
                  title: "ADD DRIVER",
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
