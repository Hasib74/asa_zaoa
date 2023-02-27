import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_text_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_dimension.dart';
import '../../../../../../core/widgets/app_network_image.dart';

class DriverDetailsDialog extends StatelessWidget {
  DriverDetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: CustomImageWidget(
              imageUrl:
                  "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:best,w_1200/cms/uploads/giz3atasiffnrc1fbbhx",
              fit: BoxFit.cover,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Muhtasim Shakil",
              style: AppTextStyle.boldTextStyle!.copyWith(
                fontSize: AppDimension.h1,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Phone No: 01811018018",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "DL No: 578689536346",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Division: Dhaka",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "District: Dhaka",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Union: Savar",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Car: Not Assigned",
              style: AppTextStyle.normalTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "NID Copy:",
              style: AppTextStyle.boldTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: CustomImageWidget(
                    imageUrl:
                        "https://allresultbd.com/wp-content/uploads/2022/03/old-NID-card.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: CustomImageWidget(
                    imageUrl:
                        "https://www.observerbd.com/2019/10/03/observerbd.com_1570128878.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Driving License Copy:",
              style: AppTextStyle.boldTextStyle!.copyWith(
                fontSize: AppDimension.b2,
                color: AppColors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: CustomImageWidget(
                    imageUrl:
                        "https://archive.thedailystar.net/photo/2011/10/05/2011-10-05__ft04.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: CustomImageWidget(
                    imageUrl:
                        "https://www.dhakadrivingbd.com/wp-content/uploads/2018/11/Driving-Licence-02.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
