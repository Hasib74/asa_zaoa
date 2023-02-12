import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../../../../../../core/widgets/app_text_fields.dart';

class RentACarRegForm extends StatelessWidget {
  const RentACarRegForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageWidget(
                  imageUrl:
                      "https://image.similarpng.com/very-thumbnail/2020/09/Toyota-logo-icon-on-transparent--PNG.png",
                  fit: BoxFit.fitHeight,
                  height: 30),
              SizedBox(
                width: 10,
              ),
              Text(
                'Toyota Premio 2023',
                style: AppTextStyle.normalTextStyle!.copyWith(
                  fontSize: AppDimension.h1,
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Total Passenger Capacity : 3',
            style: AppTextStyle.normalTextStyle!.copyWith(
              fontSize: AppDimension.b2,
              color: AppColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          FractionallySizedBox(
            widthFactor: .5,
            child: imagePickUi(context, title: "Car Photo"),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'Area:',
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: AppTextFiled(
                  hint: "Choose",
                  textEditingController: TextEditingController(),
                  isCenter: true,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 40,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'Serial:',
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: AppTextFiled(
                  hint: "Choose",
                  textEditingController: TextEditingController(),
                  isCenter: true,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 40,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'Reg No:',
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    fontSize: AppDimension.b2,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                // child: Placeholder(
                //   fallbackHeight: 30,
                // ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: AppColors.shadowColor,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: AppTextFiled(
                              height: 45,
                              hint: "Reg",
                              textEditingController: TextEditingController(),
                              border: InputBorder.none,
                              isCenter: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 2,
                          color: AppColors.shadowColor,
                        ),
                        Expanded(
                          flex: 3,
                          child: AppTextFiled(
                            height: 45,
                            hint: "Serial",
                            textEditingController: TextEditingController(),
                            border: InputBorder.none,
                            isCenter: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: imagePickUi(context, title: "Registration Copy"),
              ),
              SizedBox(width: 20),
              Expanded(
                child: imagePickUi(context, title: "Number Plate"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          radioButton(
            value: 0,
            groupValue: 0,
            title: "I own this car",
            onTap: () {},
          ),
          radioButton(
            value: 1,
            groupValue: 0,
            title: 'I am an owner of a "Rent a Car" Company',
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "I do here by declared that, the information I have given above is correct and True. I've agreed with all the",
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    color: AppColors.grey,
                    fontSize: AppDimension.b2,
                  ),
                ),
                TextSpan(
                  text: ' Terms & Condition ',
                  style: AppTextStyle.boldTextStyle!.copyWith(
                    color: AppColors.secondaryColor,
                    fontSize: AppDimension.b2,
                  ),
                ),
                TextSpan(
                  text: "of RIDE Care.",
                  style: AppTextStyle.normalTextStyle!.copyWith(
                    color: AppColors.grey,
                    fontSize: AppDimension.b2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                title: "Back",
                borderColor: AppColors.primaryColor,
                borderWidth: 1,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  color: AppColors.primaryColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: 10,
              ),
              AppButton(
                title: "Register",
                borderColor: AppColors.primaryColor,
                borderWidth: 1,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  color: AppColors.primaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
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
                        "Add Photo",
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
            SizedBox(height: 5),
            Text(
              title,
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
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
}
