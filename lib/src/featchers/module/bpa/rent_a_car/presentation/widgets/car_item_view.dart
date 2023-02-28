import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/utils/app_overlay_dialog.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../dialog/car_assign_confirmation_dialog.dart';
import '../dialog/car_delete_dialog.dart';
import '../dialog/car_details_dialog.dart';
import '../screens/rent_a_car_main_screen.dart';

class CarItemView extends StatelessWidget {
  final bool forAssign;
  final CarItem item;

  const CarItemView({Key? key, required this.item, this.forAssign = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Overlayment.show(
          context: context,
          child: forAssign ? CarAssignConfirmationDialog() : CarDetailsDialog(),
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
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width:
                      MediaQuery.of(context).size.width / (forAssign ? 4 : 3.2),
                  child: AspectRatio(
                    aspectRatio: forAssign ? 1.5 : 1.2,
                    // child: Placeholder(),
                    child: CustomImageWidget(
                      imageUrl: item.image,
                      fit: BoxFit.cover,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!forAssign)
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.check_circle,
                            color: AppColors.rightColor,
                          ),
                        ),
                      Text(
                        item.title,
                        maxLines: 1,
                        style: AppTextStyle.boldTextStyle!.copyWith(
                          fontSize:
                              forAssign ? AppDimension.b2 : AppDimension.b3,
                          color: AppColors.primaryColor,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5),
                      Text(
                        item.subtitle,
                        maxLines: 1,
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize:
                              forAssign ? AppDimension.b1 : AppDimension.b2,
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      if (!forAssign) SizedBox(height: 10),
                      if (!forAssign)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              onTap: () {
                                Overlayment.show(
                                  context: context,
                                  child: CarDeleteDialog(),
                                );
                              },
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
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
    return InkWell(
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
              size: 15,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b1 - 2,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
