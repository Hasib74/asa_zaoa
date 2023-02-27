import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/utils/app_overlay_dialog.dart';
import '../../../../../../core/widgets/app_image_view.dart';
import '../../../../../../core/widgets/app_text_fields.dart';

class RentACarDriverRegForm extends StatelessWidget {
  RentACarDriverRegForm({Key? key}) : super(key: key);

  List<String> divisionList = [
    'Dhaka',
    'Chittagong',
    'Khulna',
    'Mymensingh',
    'Barishal',
    'Rangpur',
    'Rajshahi',
  ];
  List<String> districtList = ['Dhaka', 'Tangail', 'Gazipur'];
  List<String> unionList = ['A', 'B', 'C'];

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nidController = TextEditingController();
  TextEditingController drivingLicenceNoController = TextEditingController();
  TextEditingController divisionController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController unionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            FractionallySizedBox(
              widthFactor: .4,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightGrey,
                  ),
                  padding: EdgeInsets.all(10),
                  child: AppImageView(
                    height: AppDimension.h4,
                    width: AppDimension.h4,
                    imageUrl: AppAssets.driverIcon,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.white,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                'Full Name:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                hint: "Name",
                contentPadding: EdgeInsets.zero,
                textEditingController: nameController,
                isCenter: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                'Phone No:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                contentPadding: EdgeInsets.zero,
                hint: "Phone Number",
                textEditingController: phoneNumberController,
                isCenter: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                'NID No:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                contentPadding: EdgeInsets.zero,
                hint: "NID Number",
                textEditingController: nidController,
                isCenter: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                'DL No:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                contentPadding: EdgeInsets.zero,
                hint: "Driving License Number",
                textEditingController: drivingLicenceNoController,
                isCenter: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          'Present Address',
          style: AppTextStyle.boldTextStyle!.copyWith(
            fontSize: AppDimension.b3,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 120,
              child: Text(
                'Division:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                hint: "Choose Division",
                textEditingController: divisionController,
                isCenter: true,
                isEnable: false,
                onTap: () {
                  Overlayment.show(
                    context: context,
                    child: dropdownList(
                      context,
                      data: divisionList,
                      onTap: (index) {
                        divisionController.text = divisionList[index];
                      },
                    ),
                  );
                },
                suffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 40,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 120,
              child: Text(
                'District:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                hint: "Choose District",
                textEditingController: districtController,
                isCenter: true,
                isEnable: false,
                onTap: () {
                  Overlayment.show(
                    context: context,
                    child: dropdownList(
                      context,
                      data: districtList,
                      onTap: (index) {
                        districtController.text = districtList[index];
                      },
                    ),
                  );
                },
                suffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 40,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(
              width: 120,
              child: Text(
                'Union/Village:',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: AppTextFiled(
                hint: "Choose Union/Village",
                textEditingController: unionController,
                isCenter: true,
                isEnable: false,
                onTap: () {
                  Overlayment.show(
                    context: context,
                    child: dropdownList(
                      context,
                      data: unionList,
                      onTap: (index) {
                        unionController.text = unionList[index];
                      },
                    ),
                  );
                },
                suffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 40,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "Driver's National ID",
          style: AppTextStyle.boldTextStyle!.copyWith(
            fontSize: AppDimension.b3,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: imagePickUi(context, title: "NID Front"),
            ),
            SizedBox(width: 20),
            Expanded(
              child: imagePickUi(context, title: "NID Back"),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "Driver's Driving License",
          style: AppTextStyle.boldTextStyle!.copyWith(
            fontSize: AppDimension.b3,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: imagePickUi(context, title: "DL Front"),
            ),
            SizedBox(width: 20),
            Expanded(
              child: imagePickUi(context, title: "DL Back"),
            ),
          ],
        ),
      ],
    );
  }

  imagePickUi(BuildContext context, {required String title}) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.camera,
                      size: 30,
                      color: AppColors.grey,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        title,
                        style: AppTextStyle.normalTextStyle!.copyWith(
                          fontSize: AppDimension.b2,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  radioButton(
      {required int value,
      required int groupValue,
      required String title,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (value) {
              onTap();
            },
            visualDensity: VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: AppTextStyle.normalTextStyle!.copyWith(
              fontSize: AppDimension.b2,
              color: AppColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget dropdownList(BuildContext context,
      {required List<String> data, required Function(int index) onTap}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (_, i) {
          return SizedBox(height: 2);
        },
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              onTap(index);
              Navigator.of(context).pop();
            },
            child: Container(
              color: AppColors.white,
              padding: EdgeInsets.all(10),
              child: Text(
                data[index],
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.b2 + 2,
                  color: AppColors.darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
