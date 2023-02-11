import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class RentACarModelList extends StatefulWidget {
  const RentACarModelList({Key? key}) : super(key: key);

  @override
  State<RentACarModelList> createState() => _RentACarModelListState();
}

class _RentACarModelListState extends State<RentACarModelList> {
  List<String> modelIcons = [
    "https://www.toyotacr.com/uploads/family/6fd252b095dbca92464f26d55deae9f5e0bf9cf8.png",
    "https://i0.wp.com/autodirect.lk/wp-content/uploads/2019/11/toyota-allion.png?fit=381%2C93&ssl=1",
    "https://cdn.shopify.com/s/files/1/0516/6376/5656/files/noah_logo2_6aae76d6-21b5-4ec7-b5c7-3c85e1a94b56.png?v=1628049564",
    "https://www.pngfind.com/pngs/m/122-1221126_toyota-corolla-logo-graphics-hd-png-download.png",
    "https://catalogphoto.goo-net.com/carphoto/10101065_201205amm.jpg",
  ];

  int selectedIndex = -1;

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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Toyota',
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        fontSize: AppDimension.b3,
                        color: AppColors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' > Select Model',
                      style: AppTextStyle.normalTextStyle!.copyWith(
                        fontSize: AppDimension.b3,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            padding: EdgeInsets.only(bottom: 20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: modelIcons.length,
            separatorBuilder: (_, i) {
              return SizedBox(
                height: 10,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return modelItemView(
                itemUrl: modelIcons[index],
                onTap: () {
                  if (selectedIndex == index) {
                    selectedIndex = -1;
                  } else {
                    selectedIndex = index;
                  }

                  setState(() {});
                },
                selected: selectedIndex == index,
              );
            },
          ),
          SizedBox(
            height: 20,
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
                title: "Next",
                borderColor: AppColors.primaryColor,
                borderWidth: 1,
                style: AppTextStyle.normalTextStyle!.copyWith(
                  color: AppColors.primaryColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.RENT_A_CAR_YEAR_SCREEN);
                },
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

  modelItemView({
    required String itemUrl,
    required Function() onTap,
    required bool selected,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: selected ? AppColors.secondaryColor : AppColors.white,
          border: Border.all(color: AppColors.lightGrey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: CustomImageWidget(
          imageUrl: itemUrl,
          fit: BoxFit.fitHeight,
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
