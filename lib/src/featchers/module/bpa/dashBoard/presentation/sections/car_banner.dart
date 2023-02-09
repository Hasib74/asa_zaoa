import 'package:asa_zaoa/src/core/utils/app_assets.dart';
import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class CarBanner extends StatelessWidget {
  const CarBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: AppImageView(imageUrl: AppAssets.car_banner_png),
    );
  }
}
