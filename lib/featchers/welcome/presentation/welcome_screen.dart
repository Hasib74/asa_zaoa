import 'package:flutter/material.dart';
import 'package:asa_zaoa/core/utils/app_assets.dart';
import 'package:asa_zaoa/core/widgets/app_image_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(

              left: MediaQuery.of(context).size.width * 0.12,

              child: AppImageView(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                imageUrl: AppAssets.welcome_page_car_png,
              ))
        ],
      ),
    );
  }
}
