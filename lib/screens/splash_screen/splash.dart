// import 'package:flutter/material.dart';
// import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/cal_emi/CalEmi.dart';
import 'package:loneapp/screens/splash_screen/model/splash_base_model.dart';
// import 'package:provider/provider.dart';

// class Splash extends StatelessWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<SplashScreenBaseModel>(
//       create: (context) => SplashScreenBaseModel(context: context),
//       lazy: false,
//       child: Consumer<SplashScreenBaseModel>(builder: (context, data, child) {
//         return SafeArea(
//           child: Scaffold(
//             body: Container(
//               child: Column(children: <Widget>[
//                 Flexible(
//                   flex: 1,
//                   child: Container(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 50.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                     flex: 6,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/images/logo.jpeg",
//                           height: 100,
//                           width: 100,
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           "Instant Fast Loan",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: AppColors.primery_color,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     )),
//                 Flexible(
//                   flex: 1,
//                   child: Container(
//                     width: double.infinity,
//                     child: Text(
//                       "By digverve",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: AppColors.primery_color,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loneapp/screens/login/login.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Splash extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  Animation<double>? animation;
  bool isSubmited = false;

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    if(isSubmited){
Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CalEMI(),
      ),
    );
    }else{
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
    }
    
  }
 void getSharedDta() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   
    isSubmited =  prefs.getBool("isSubmited") ?? false;

  }
  @override
  void initState() {
    getSharedDta();
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation!.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text("Powerd By Mr. Bhati"))
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/logo.jpeg',
                width: animation!.value * 110,
                height: animation!.value * 110,
              ),
              SizedBox(height: 20),
                 Text(
                        "Instant Fast Loan",
                        style: TextStyle(
                          fontSize: 30,
                          color: AppColors.primery_color,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
            ],
          ),
        ],
      ),
    );
  }
}
