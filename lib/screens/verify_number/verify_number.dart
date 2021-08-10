import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loneapp/componets/custom_dilog.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VerifyNumber extends StatefulWidget {
  VerifyNumber({Key? key}) : super(key: key);

  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  final _verifyotpFormKey = GlobalKey<FormState>();

  bool _isloading = false;
  final interval = const Duration(seconds: 1);
  TextEditingController? oneController;
  TextEditingController? twoController;
  TextEditingController? threeController;
  TextEditingController? fourController;
  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';
  updateOTP() async {
    print("Update OTP CAll");
    setState(() {
      _isloading = true;
      oneController!.text = "8";
      twoController!.text = "3";
      threeController!.text = "4";
      fourController!.text = "5";
    });
    await Future.delayed(const Duration(seconds: 2), () {
      print("Sending to home page");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);

        currentSeconds = timer.tick;
        if (timer.tick <= 10) {
          timer.cancel();
          // Dialog(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   elevation: 0,
          //   backgroundColor: Colors.transparent,
          //   child: contentBox(context),
          // );
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: contentBox(context),
                );
                // return CustomDialogBox(
                //   title: "Instant Fast Loan OTP",
                //   descriptions: "Your one time password (OTP) is:",
                //   otp: "9059",
                //   text: "Yes",
                //   setOtp: updateOTP(),
                // );
              });
        }
      });
    });
  }

  // startTime(BuildContext context) async {
  //   print("Timer start runing");

  //   var _duration = new Duration(seconds: 2);
  //   return new Timer(_duration, navigationPage);
  // }

  // void navigationPage() {
  //   setState(() {
  //     currentSeconds = 60;
  //   });

  // }

  @override
  void initState() {
    startTimeout();
    // TODO: implement initState
    super.initState();
    oneController = TextEditingController();
    twoController = TextEditingController();
    threeController = TextEditingController();
    fourController = TextEditingController();
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(left: 20, top: 45 + 20, right: 20, bottom: 20),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Text(
                "Instant Fast Loan OTP",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your one time password (OTP) is:",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "8345",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.center,
                child: FlatButton(
                    color: AppColors.primery_color,
                    onPressed: () {
                      Navigator.of(context).pop();
                      updateOTP();
                    },
                    child: Text(
                      "GET",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Image.asset("assets/images/logo.jpeg")),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // startTime(context);
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _verifyotpFormKey,
          child: Container(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                        child: Text(
                          "Verify phone",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 4, 20, 10),
                        child: Text(
                          "OTP",
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.primery_color,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
                        // child: Text(
                        //   "Check your SMS message. We've send you the PIN at +91 8149946614 \n " +
                        //       widget.otp,
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.w500,
                        //     fontSize: 17,
                        //   ),
                        // ),
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 7,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: oneController,
                                onChanged: (value) {
                                  FocusScope.of(context).nextFocus();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      _isloading = false;
                                    });
                                    return "";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                decoration: new InputDecoration(

                                    // border: new OutlineInputBorder(
                                    //     borderSide: new BorderSide(color: Colors.teal)),
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 7,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: twoController,
                                onChanged: (value) {
                                  FocusScope.of(context).nextFocus();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      _isloading = false;
                                    });
                                    return "";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                decoration: new InputDecoration(

                                    // border: new OutlineInputBorder(
                                    //     borderSide: new BorderSide(color: Colors.teal)),
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 7,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: threeController,
                                onChanged: (value) {
                                  FocusScope.of(context).nextFocus();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      _isloading = false;
                                    });
                                    return "";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                decoration: new InputDecoration(

                                    // border: new OutlineInputBorder(
                                    //     borderSide: new BorderSide(color: Colors.teal)),
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 7,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: fourController,
                                onChanged: (value) {
                                  FocusScope.of(context).nextFocus();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      _isloading = false;
                                    });
                                    return "";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                                decoration: new InputDecoration(

                                    // border: new OutlineInputBorder(
                                    //     borderSide: new BorderSide(color: Colors.teal)),
                                    hintText: '0',
                                    hintStyle: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
                ),
                SizedBox(height: 15),
                Center(
                    child: Text(timerText,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ))),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      if (_verifyotpFormKey.currentState!.validate()) {
                        setState(() {
                          _isloading = true;
                        });
                      }
                    },
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primery_color,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          _isloading == false ? "Verify" : "Verifying...",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
