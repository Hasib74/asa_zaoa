import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(250 / 1),
                  bottomRight: Radius.circular(250 / 1),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Icon(
                Icons.add_a_photo_outlined,
                size: MediaQuery.of(context).size.width * 0.1,
                color: AppColors.secondaryColor.withOpacity(0.3),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
