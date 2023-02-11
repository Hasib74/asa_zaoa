import 'package:flutter/material.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class RentACarBrandList extends StatefulWidget {
  const RentACarBrandList({Key? key}) : super(key: key);

  @override
  State<RentACarBrandList> createState() => _RentACarBrandListState();
}

class _RentACarBrandListState extends State<RentACarBrandList> {
  List<BrandItem> brandList = [
    BrandItem(
      iconUrl:
          "https://cdn.iconscout.com/icon/free/png-256/mitsubishi-4-282588.png",
      title: "Mitsubishi",
    ),
    BrandItem(
      iconUrl:
          "https://image.similarpng.com/very-thumbnail/2020/09/Toyota-logo-icon-on-transparent--PNG.png",
      title: "Toyota",
    ),
    BrandItem(
      iconUrl:
          "https://w7.pngwing.com/pngs/44/573/png-transparent-ford-motor-company-ford-ikon-ford-mustang-car-ford-blue-text-logo.png",
      title: "Ford",
    ),
    BrandItem(
      iconUrl:
          "https://freepngimg.com/download/car%20logo/19-hyundai-car-logo-png-brand-image.png",
      title: "Hyundai",
    ),
    BrandItem(
      iconUrl:
          "https://cdn.iconscout.com/icon/free/png-256/mercedes-8-202855.png",
      title: "Mercedes",
    ),
    BrandItem(
      iconUrl:
          "https://freepngimg.com/download/car%20logo/10-honda-car-logo-png-brand-image.png",
      title: "Honda",
    ),
    BrandItem(
      iconUrl: "https://cdn.iconscout.com/icon/free/png-256/bmw-5-202750.png",
      title: "BMW",
    ),
    BrandItem(
      iconUrl:
          "https://toppng.com/uploads/preview/audi-logo-1154874010955h7lwhggt.png",
      title: "Audi",
    ),
    BrandItem(
      iconUrl:
          "https://cdn.iconscout.com/icon/free/png-256/mitsubishi-4-282588.png",
      title: "Photon",
    ),
    BrandItem(
      iconUrl: "https://cdn.iconscout.com/icon/free/png-256/volvo-202923.png",
      title: "Volvo",
    ),
    BrandItem(
      iconUrl: "https://pbs.twimg.com/media/EkTKYHnWAAQXlvL.png",
      title: "Tata",
    ),
    BrandItem(
      iconUrl:
          "https://cdn.iconscout.com/icon/free/png-256/nissan-5-202859.png",
      title: "Nissan",
    ),
  ];

  int selectedIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Select Brand",
            style: AppTextStyle.normalTextStyle!.copyWith(
              fontSize: AppDimension.b3,
              color: AppColors.grey.withOpacity(.5),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            padding: EdgeInsets.only(bottom: 20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: brandList.length,
            itemBuilder: (BuildContext context, int index) {
              return brandItemView(
                item: brandList[index],
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
          AppButton(
            width: MediaQuery.of(context).size.width,
            title: "Other",
            textColor: AppColors.grey,
            borderColor: AppColors.shadowColorOne,
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          AppButton(
            title: "Next",
            borderColor: AppColors.primaryColor,
            borderWidth: 1,
            style: AppTextStyle.normalTextStyle!.copyWith(
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.RENT_A_CAR_MODEL_SCREEN);
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  brandItemView({
    required BrandItem item,
    required Function() onTap,
    required bool selected,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: selected ? AppColors.secondaryColor : AppColors.white,
          border: Border.all(color: AppColors.lightGrey, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageWidget(
                imageUrl: item.iconUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item.title,
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: selected ? AppColors.white : AppColors.grey,
              ),
            )
          ],
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
