import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImageView extends StatelessWidget {
  String? imageUrl;
  double? width;
  double? height;
  Color? color;

  AppImageView({Key? key, this.imageUrl, this.height, this.width , this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isPng = imageUrl!.endsWith('.png');

    if (_isPng) {
      return Image.asset(
        imageUrl!,
        width: width,
        height: height,
        color: color,
      );
    }
    return SvgPicture.asset(
      imageUrl!,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      color: color,
    );
  }
}
