import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:flutter/material.dart';

import '../../widegts/bpa_profile_text_fileds.dart';

class BpaProfileFields extends StatelessWidget {
  const BpaProfileFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppSpaces.spacesHeight15,
        AppSpaces.spacesHeight15,
        BpaProfileTextFiled(
          name: "Full Name :",
          hint: "Name",
          controller: TextEditingController(),
        ),
        AppSpaces.spacesHeight15,
        BpaProfileTextFiled(
          name: "NID Number :   ",
          hint: "Nid Number",
          controller: TextEditingController(),
        ),
        AppSpaces.spacesHeight15,
        BpaProfileTextFiled(
          name: "Phone Number :",
          hint: "Phone",
          controller: TextEditingController(),
        ),
        AppSpaces.spacesHeight15,
      ],
    ));
  }
}
