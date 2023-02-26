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
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: AspectRatio(
                  aspectRatio: 1.2,
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
                    Text(
                      item.name,
                      maxLines: 1,
                      style: AppTextStyle.boldTextStyle!.copyWith(
                        fontSize: AppDimension.b3,
                        color: AppColors.primaryColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "DL: ${item.phone}",
                      maxLines: 1,
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        fontSize: AppDimension.b2,
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Car: Not Assigned",
                      maxLines: 1,
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        fontSize: AppDimension.b2,
                        color: AppColors.darkGrey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CarListActionButton(
                          icon: Icons.edit_outlined,
                          title: "EDIT",
                          onTap: () {},
                        ),
                        CarListActionButton(
                          icon: Icons.car_crash,
                          title: "ADD Car",
                          onTap: () {},
                        ),
                        CarListActionButton(
                          icon: Icons.delete_outline,
                          title: "DELETE",
                          onTap: () {
                            // Overlayment.show(
                            //   context: context,
                            //   child: CarDeleteDialog(),
                            // );
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
              size: 20,
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
