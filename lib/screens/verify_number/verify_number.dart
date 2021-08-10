import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VerifyNumber extends StatefulWidget {
  VerifyNumber({Key? key}) : super(key: key);

  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  final _verifyotpFormKey = GlobalKey<FormState>();

  bool _isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TextEditingController oneController = TextEditingController();
    TextEditingController twoController = TextEditingController();
    TextEditingController threeController = TextEditingController();
    TextEditingController fourController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
                                //controller: oneController,
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
                                //controller: _twoController,
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
                                //controller: _threeController,
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
                                //controller: _fourController,
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
                    child: Text('00:20',
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
                          _isloading == false ? "Verify" : "Loading...",
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
