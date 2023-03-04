import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_network_image.dart';
import '../../../../../../core/widgets/app_text_fields.dart';
import '../widgets/car_item_view.dart';
import 'rent_a_car_main_screen.dart';

class RentACarAssignCarScreen extends StatelessWidget {
  RentACarAssignCarScreen({Key? key}) : super(key: key);

  List<CarItem> carList = [
    CarItem(
      image:
          "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:best,w_1200/cms/uploads/giz3atasiffnrc1fbbhx",
      title: "Toyota Hiace 2023",
      subtitle: "Dhaka Metro kha 23-56789",
    ),
    CarItem(
      image:
          "https://imgd.aeplcdn.com/370x208/n/cw/ec/40087/thar-exterior-right-front-three-quarter-11.jpeg?q=75",
      title: "Toyota Hiace 2023",
      subtitle: "Dhaka Metro kha 23-56789",
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
              driverInfo(),
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
                        hint: "Search Car",
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
                itemCount: carList.length,
                separatorBuilder: (_, i) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return CarItemView(
                    item: carList[index],
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

  Widget driverInfo() {
    return Column(
      children: [
        Text(
          "Please Choose a Car for",
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
                  "https://img.freepik.com/premium-photo/cute-baby-panda-bear-with-big-eyes-3d-rendering-cartoon-illustration_691560-4917.jpg?w=2000",
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Muhtasim Shakil",
          maxLines: 1,
          style: AppTextStyle.boldTextStyle!.copyWith(
            fontSize: AppDimension.b3,
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          "DL: 57153615241563",
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
