import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loneapp/screens/splash_screen/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroBaseModel extends ChangeNotifier {
  final BuildContext context;

  IntroBaseModel({required this.context}) {
    getSharedDta();
  }
  final controller = PageController();
  final storage = GetStorage();
  var page_count;
  String? userToken;
  final box = GetStorage();
  void changePageView(int page) {
    page_count = page;
  }

  void getSharedDta() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString("token");
  }

  void gotoNext() async {
    if (page_count == 3) {
      box.write('intro', true);

      if (userToken == null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isIntro", false);
        print("Naviget to Login Screen");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Splash(),
          ),
        );
      } else {
        print("Naviget to Home Screen");
        // Navigator.pushReplacement(
        //   context!,
        //   MaterialPageRoute(
        //     builder: (context) => HomeS(),
        //   ),
        // );
      }
    } else {
      controller.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }
  }
}
