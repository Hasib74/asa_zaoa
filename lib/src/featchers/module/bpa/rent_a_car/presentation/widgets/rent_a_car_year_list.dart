import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';

class RentACarYearList extends StatefulWidget {
  const RentACarYearList({Key? key}) : super(key: key);

  @override
  State<RentACarYearList> createState() => _RentACarYearListState();
}

class _RentACarYearListState extends State<RentACarYearList> {
  List<String> yearList = [
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
  ];

  int selectedIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(yearList.length, (index) {
        return yearItemView(
          year: yearList[index],
          onTap: () {
            if (selectedIndex == index) {
              selectedIndex = -1;
            } else {
              selectedIndex = index;
            }

            setState(() {});
          },
          width: (MediaQuery.of(context).size.width - 80) / 3,
          selected: selectedIndex == index,
        );
      }),
    );
  }

  yearItemView({
    required String year,
    required Function() onTap,
    required bool selected,
    required double width,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: selected ? AppColors.secondaryColor : AppColors.white,
          border: Border.all(color: AppColors.lightGrey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Text(
          year,
          style: AppTextStyle.normalTextStyle!.copyWith(
            fontSize: AppDimension.h1,
            color: selected ? AppColors.white : AppColors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class BrandItem {
  final String iconUrl;
  final String title;

  BrandItem({required this.iconUrl, required this.title});
}
