import 'package:asa_zaoa/src/core/themes/app_text_style.dart';
import 'package:asa_zaoa/src/core/utils/app_overlay_dialog.dart';
import 'package:asa_zaoa/src/core/utils/app_spaces.dart';
import 'package:asa_zaoa/src/core/widgets/app_button.dart';
import 'package:asa_zaoa/src/core/widgets/app_drop_down_button.dart';
import 'package:asa_zaoa/src/core/widgets/app_drop_down_list_dialog.dart';
import 'package:asa_zaoa/src/core/widgets/date_and_time.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/data/constant_data.dart';
import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/widgets/app_reactanle_border_with_icon_for_select.dart';
import '../../widegts/bpa_profile_text_fileds.dart';

List<String> gender = ["Male", "Female"];

class BpaProfileFields extends StatelessWidget {
  const BpaProfileFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          BpaProfileTextFiled(
            name: "Full Name:",
            hint: "Name",
            controller: TextEditingController(),
          ),
          AppSpaces.spacesHeight15,
          BpaProfileTextFiled(
            name: "NID Number:",
            hint: "Nid Number",
            controller: TextEditingController(),
          ),
          AppSpaces.spacesHeight15,
          BpaProfileTextFiled(
            name: "Phone No:",
            hint: "Phone",
            controller: TextEditingController(),
          ),
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "Date of Birth:",
                      style: AppTextStyle.smallTextStyle,
                    )),
                AppSpaces.spacesWidth15,
                Expanded(flex: 3, child: AppDateAndTimeWidgets()),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "Gender:",
                      style: AppTextStyle.smallTextStyle,
                    )),
                AppSpaces.spacesWidth15,
                Expanded(
                    flex: 3,
                    child: AppDropDownButton(
                      title: "Select Gender",
                      onPressed: () {
                        Overlayment.show(
                            context: context,
                            child: AppDropDownList(data: gender));
                      },
                    )),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          Text("Present Address", style: AppTextStyle.boldTextStyle),
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "Division:",
                      style: AppTextStyle.smallTextStyle,
                    )),
                AppSpaces.spacesWidth15,
                Expanded(
                    flex: 3,
                    child: AppDropDownButton(
                      onPressed: () {
                        Overlayment.show(
                            context: context,
                            child: AppDropDownList(
                                data: AppConstantData.divisionList));
                      },
                      title: "Select Division",
                    )),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "District:",
                      style: AppTextStyle.smallTextStyle,
                    )),
                AppSpaces.spacesWidth15,
                Expanded(
                    flex: 3,
                    child: AppDropDownButton(
                      onPressed: () {
                        Overlayment.show(
                            context: context,
                            child: AppDropDownList(
                                data: AppConstantData.districtList));
                      },
                      title: "Select District",
                    )),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      "Union/Village:",
                      style: AppTextStyle.smallTextStyle,
                    )),
                AppSpaces.spacesWidth15,
                Expanded(
                    flex: 3,
                    child: AppDropDownButton(
                      onPressed: () {
                        Overlayment.show(
                            context: context,
                            child: AppDropDownList(
                                data: AppConstantData.unionList));
                      },
                      title: "Select Union/Village:",
                    )),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          Text("NID Photo", style: AppTextStyle.boldTextStyle),
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                    child: AppRectAngleIconForSelect(
                  title: "Front Side",
                )),
                AppSpaces.spacesWidth15,
                Expanded(
                    child: new AppRectAngleIconForSelect(
                  title: "Back Side",
                )),
              ],
            ),
          ),
          AppSpaces.spacesHeight15,
          AppButton(
            width: 200,
            borderColor: AppColors.primaryColor,
            color: AppColors.primaryColor,
            textColor: AppColors.whiteColor,
            title: "Submit",
            onPressed: () {},
          ),
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
          AppSpaces.spacesHeight15,
        ],
      ),
    ));
  }
}
