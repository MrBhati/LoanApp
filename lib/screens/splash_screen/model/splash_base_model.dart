import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loneapp/screens/intro/intro.dart';
import 'package:loneapp/screens/login/login.dart';
import 'package:loneapp/utillity/Sharedpool.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenBaseModel extends ChangeNotifier {
  final BuildContext? context;
  SplashScreenBaseModel({this.context}) {
    getSharedDta();
    startTime();
  }
  bool? isIntroseen = true;
  String? userToken;
  SharedPool sharedPool = SharedPool();
  int? id;

  startTime() async {
    print("Timer start runing");

    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void getSharedDta() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString("token");
    isIntroseen =
        prefs.getBool("isIntro") == null ? true : prefs.getBool("isIntro");
    id = prefs.getInt("id");
  }

  void navigationPage() {
    // Navigator.pushReplacement(
    //     context!, MaterialPageRoute(builder: (context) => Login()));
    if (isIntroseen!) {
      print("Naviget to Intro Screen");
      Navigator.pushReplacement(
        context!,
        MaterialPageRoute(
          builder: (context) => Intro(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context!,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    }
  }
}
