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
      {Key? key, required this.onSelectedCountryCode, required this.onSelectedCountryName})
      : super(key: key);

  @override
  State<AppCountryPickerWidgets> createState() => _AppCountryPickerWidgetsState();
}

class _AppCountryPickerWidgetsState extends State<AppCountryPickerWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
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
        child: Row(
          children: [
            AppSpaces.spacesWidth10,
            Flag.fromString(
              widget.selectedCountryName?.substring(0, 2) ?? 'BD',
              height: 20,
              width: 30,
              fit: BoxFit.fill,
            ),
            Text("  + ${widget.selectedCountryPhoneCode ?? '880'}"),
          ],
        ),
      ),
    );
  }
}
