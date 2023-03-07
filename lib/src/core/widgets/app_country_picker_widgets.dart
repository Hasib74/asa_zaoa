import 'package:country_picker/country_picker.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

import '../utils/app_spaces.dart';

class AppCountryPickerWidgets extends StatefulWidget {
  String? selectedCountryPhoneCode;
  String? selectedCountryName;

  Function(String)? onSelectedCountryCode;
  Function(String)? onSelectedCountryName;

  AppCountryPickerWidgets(
      {Key? key,
      required this.onSelectedCountryCode,
      required this.onSelectedCountryName})
      : super(key: key);

  @override
  State<AppCountryPickerWidgets> createState() =>
      _AppCountryPickerWidgetsState();
}

class _AppCountryPickerWidgetsState extends State<AppCountryPickerWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //   width: 110,
      child: InkWell(
        onTap: () {
          showCountryPicker(
            context: context,
            showPhoneCode: true,
            onSelect: (Country country) {
              setState(() {
                widget.selectedCountryName = country.countryCode;
                widget.selectedCountryPhoneCode = country.phoneCode;
                widget.onSelectedCountryCode!(country.phoneCode);
                widget.onSelectedCountryName!(country.countryCode);
              });
            },
          );
        },
        child: Stack(
          children: [
            // AppSpaces.spacesWidth10,
            Positioned(
              top: 10,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Flag.fromString(
                    widget.selectedCountryName?.substring(0, 2) ?? 'BD',
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned(
              top: 15,
                left: 25,
                child: Text("  +${widget.selectedCountryPhoneCode ?? '880'}")),
          ],
        ),
      ),
    );
  }
}
