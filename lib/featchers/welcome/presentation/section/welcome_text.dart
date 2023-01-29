import 'package:asa_zaoa/core/utils/app_assets.dart';
import 'package:asa_zaoa/core/widgets/app_image_view.dart';
import 'package:flutter/cupertino.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppImageView(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.6,
      imageUrl: AppAssets.welcome_text,
    );
  }
}
