import 'package:asa_zaoa/core/themes/app_text_style.dart';
import 'package:asa_zaoa/core/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  String? imageUrl;
  String? titile;

  RoundIconButton({Key? key, required this.imageUrl, required this.titile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            elevation: MaterialStateProperty.all<double>(0)),
        onPressed: () {},
        child: Column(
          children: [
            AppImageView(
              height: 100,
              width: 100,
              imageUrl: imageUrl,
            ),
            Text(
              titile!,
              style: AppTextStyle.boldTextStyle,
            ),
          ],
        ));
  }
}
