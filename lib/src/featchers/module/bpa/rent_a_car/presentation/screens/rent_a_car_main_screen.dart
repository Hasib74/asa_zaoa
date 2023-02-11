import 'package:flutter/material.dart';

import '../widgets/rent_a_car_no_registered_car.dart';
import '../widgets/rent_a_car_tab.dart';
import '../widgets/rent_a_car_title.dart';

class RentACarMainScreen extends StatelessWidget {
  RentACarMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RentACarTitle(),
              SizedBox(
                height: 30,
              ),
              RentACarTab(),
              SizedBox(
                height: 30,
              ),
              RentACarNoRegisteredCar(),
            ],
          ),
        ),
      ),
    );
  }
}
