import 'package:asa_zaoa/src/featchers/main/route/route_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/app_text_fields.dart';
import '../widgets/car_item_view.dart';
import '../widgets/driver_item_view.dart';
import '../widgets/rent_a_car_no_registered_car.dart';
import '../widgets/rent_a_car_no_registered_driver.dart';
import '../widgets/rent_a_car_tab.dart';

class RentACarMainScreen extends StatefulWidget {
  const RentACarMainScreen({Key? key}) : super(key: key);

  @override
  State<RentACarMainScreen> createState() => _RentACarMainScreenState();
}

class _RentACarMainScreenState extends State<RentACarMainScreen> {
  bool carTabSelected = true;

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
    CarItem(
      image:
          "https://imgd-ct.aeplcdn.com/1200x900/n/cw/ec/135245/urus-performante-right-front-three-quarter-4.jpeg",
      title: "Toyota Premio 2023",
      subtitle: "Dhaka Metro kha 23-56789",
    ),
    CarItem(
      image:
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAY0nil.img",
      title: "Toyota Hiace 2023",
      subtitle: "Dhaka Metro kha 23-56789",
    ),
  ];
  List<DriverItem> driverList = [
    DriverItem(
      image:
          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
      name: "Sazzadur Rahman",
      phone: "+8801678752472",
    ),
    DriverItem(
      image:
          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
      name: "Abdullah Al Mamun",
      phone: "+8801678752472",
    ),
    DriverItem(
      image:
          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
      name: "Bokhtiar Toshar",
      phone: "+8801678752472",
    ),
    DriverItem(
      image:
          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
      name: "Muhtasim Shakil",
      phone: "+8801678752472",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RentACarTab(
                isCarSelected: carTabSelected,
                onCarTap: () {
                  setState(() {
                    carTabSelected = true;
                  });
                },
                onDriverTap: () {
                  setState(() {
                    carTabSelected = false;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              carTabSelected
                  ? carList.isEmpty
                      ? Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            RentACarNoRegisteredCar(),
                          ],
                        )
                      : Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: AppTextFiled(
                                              hint: "Search Car",
                                              textEditingController:
                                                  TextEditingController(),
                                              backgroundColor:
                                                  AppColors.lightGrey,
                                              isCenter: true,
                                              contentPadding:
                                                  EdgeInsets.only(right: 40),
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                CupertinoIcons
                                                    .search_circle_fill,
                                                size: 40,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    InkWell(
                                      onTap: () {
                                        RouteController(context)
                                            .goToRentACarBrandSelectScreen();
                                      },
                                      child: Icon(
                                        CupertinoIcons.add_circled_solid,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: carList.length,
                                  separatorBuilder: (_, i) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CarItemView(item: carList[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                  : driverList.isEmpty
                      ? Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            RentACarNoRegisteredDriver(),
                          ],
                        )
                      : Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: AppTextFiled(
                                              hint: "Search Driver",
                                              textEditingController:
                                                  TextEditingController(),
                                              backgroundColor:
                                                  AppColors.lightGrey,
                                              isCenter: true,
                                              contentPadding:
                                                  EdgeInsets.only(right: 40),
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                CupertinoIcons
                                                    .search_circle_fill,
                                                size: 40,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    InkWell(
                                      onTap: () {
                                        RouteController(context)
                                            .goToRentACarDriverRegScreen();
                                      },
                                      child: Icon(
                                        CupertinoIcons.add_circled_solid,
                                        size: 40,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: driverList.length,
                                  separatorBuilder: (_, i) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return DriverItemView(
                                        item: driverList[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
            ],
          ),
        ),
      ),
    );
  }
}

class CarItem {
  final String image;
  final String title;
  final String subtitle;

  CarItem({required this.image, required this.title, required this.subtitle});
}

class DriverItem {
  final String image;
  final String name;
  final String phone;

  DriverItem({required this.image, required this.name, required this.phone});
}
