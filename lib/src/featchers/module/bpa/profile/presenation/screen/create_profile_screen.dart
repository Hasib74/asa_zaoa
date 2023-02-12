import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_colors.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_image_view.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/profile/presenation/screen/section/fields.dart';
import 'package:asa_zaoa/src/featchers/module/bpa/profile/presenation/screen/section/header_section.dart';
import 'package:flutter/material.dart';

class CreateBpaProfileScreen extends StatelessWidget {
  const CreateBpaProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopSection(),
          Expanded(child: BpaProfileFields()),
        ],
      ),
    );
  }
}
