import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_dimension.dart';

class AsaZaoaTitle extends StatelessWidget {
  String? title;

  AsaZaoaTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title ?? "Log in to",
            style: AppTextStyle.normalTextStyle,
          ),
          Text(
            "AsaZaoa",
            style: AppTextStyle.boldTextStyle!
                .copyWith(fontSize: AppDimension.h3, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
