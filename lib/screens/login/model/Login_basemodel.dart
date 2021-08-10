import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loneapp/screens/intro/intro.dart';
import 'package:loneapp/utillity/Sharedpool.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBaseModel extends ChangeNotifier {
  final BuildContext? context;
  LoginBaseModel({this.context});
  final GlobalKey<FormState>? loginFormKey = GlobalKey<FormState>();
  bool isloading = false;
  TextEditingController mobileController = TextEditingController();

  void setSharedData(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("save_number", value);
  }

  navigationPage() {
    if (loginFormKey!.currentState!.validate()) {
      isloading = true;
      setSharedData(mobileController.text.toString());
    }
  }
}
