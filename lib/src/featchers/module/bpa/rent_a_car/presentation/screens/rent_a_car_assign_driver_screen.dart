import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../../../../../../core/widgets/app_text_fields.dart';
import '../widgets/driver_item_view.dart';
import 'rent_a_car_main_screen.dart';

class RentACarAssignDriverScreen extends StatelessWidget {
  RentACarAssignDriverScreen({Key? key}) : super(key: key);

  List<DriverItem> driverList = [
    DriverItem(
      image:
          "https://img.freepik.com/premium-photo/cute-baby-panda-bear-with-big-eyes-3d-rendering-cartoon-illustration_691560-4917.jpg?w=2000",
      name: "Sazzadur Rahman",
      phone: "+8801678752472",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              carInfo(),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: AppTextFiled(
                        height: 45,
                        hint: "Search Driver",
                        textEditingController: TextEditingController(),
                        backgroundColor: AppColors.lightGrey,
                        contentPadding: EdgeInsets.only(left: 20, right: 40),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.search_circle_fill,
                          size: 45,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: driverList.length,
                separatorBuilder: (_, i) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return DriverItemView(
                    item: driverList[index],
                    forAssign: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carInfo() {
    return Column(
      children: [
        Text(
          "Please Choose a Driver for",
          maxLines: 1,
          style: AppTextStyle.normalTextStyle!.copyWith(
            fontSize: AppDimension.b2,
            color: AppColors.darkGrey,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 10),
        FractionallySizedBox(
          widthFactor: .3,
          child: AspectRatio(
            aspectRatio: 1,
            child: CustomImageWidget(
              imageUrl:
                  "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:best,w_1200/cms/uploads/giz3atasiffnrc1fbbhx",
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Toyota Hiace 2023",
          maxLines: 1,
          style: AppTextStyle.boldTextStyle!.copyWith(
            fontSize: AppDimension.b3,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          "Dhaka Metro kha 23-56789",
          maxLines: 1,
          style: AppTextStyle.normalTextStyle!.copyWith(
            fontSize: AppDimension.b1,
            color: AppColors.black,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
