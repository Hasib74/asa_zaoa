import 'package:asa_zaoa/src/core/widgets/app_snack_bar.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/routes/app_routes.dart';

class SignInFunctions {
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();

  TextEditingController passwordTextEditingController =
      new TextEditingController();

  signIn(BuildContext context) {
    if (_isValid(context)) {
      Navigator.pushNamed(
        context,
        AppRoutes.BPA_DISPLAY,
      );
    }
  }

  _isValid(BuildContext context) {
    bool _isValid = false;

    if (phoneNumberTextEditingController.value.text.isEmpty) {
      _isValid = false;

      AppSnackBar.showError(
        context,
        'Please enter your phone number',
      );
    } else if (passwordTextEditingController.value.text.isEmpty) {
      _isValid = false;

      AppSnackBar.showError(
        context,
        'Please enter your password',
      );
    } else {
      _isValid = true;
    }

    return _isValid;
  }
}
