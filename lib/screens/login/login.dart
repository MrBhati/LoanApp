import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();

  bool _isloading = false;
  // TextEditingController mobileController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //   mobileController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _loginFormKey,
          child: Container(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 35, 20, 10),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Welcome To",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Instant Fast Loan",
                        style: TextStyle(
                          fontSize: 30,
                          color: AppColors.primery_color,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Plese enter mobile number wich is linked to your bank account.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: TextFormField(
                              // controller: _mobileController,
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500)),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      if (_loginFormKey.currentState!.validate()) {
                        setState(() {
                          _isloading = true;
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyNumber()));
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primery_color,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          _isloading == false ? "Continue" : "Loading...",
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
