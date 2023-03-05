import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/app_image_view.dart';

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
