import 'package:asa_zaoa/src/featchers/module/bpa/_display/presentation/screen/sections/bottom_naigation_bar.dart';
import 'package:flutter/material.dart';

class BpaDisplayScreen extends StatelessWidget {
  const BpaDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            BpaBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
