import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import '../utils/app_colors.dart';
import '../utils/app_dimension.dart';

class AppDropDownList extends StatelessWidget {
  List<String> data;
  Function(int index)? onTap;

  AppDropDownList({Key? key, required this.data, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return dropdownList(context, data: data, onTap: onTap);
  }

  Widget dropdownList(BuildContext context,
      {required List<String> data, required Function(int index)? onTap}) {
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
              onTap!(index);
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
