import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/kyc_screens/face_identity.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';

class BasicDetails extends StatefulWidget {
  BasicDetails({Key? key}) : super(key: key);

  @override
  _BasicDetailsState createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  String? _genderRadioBtnVal;
  void _handleGenderChange(String? value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 105,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          title: Container(
            decoration: BoxDecoration(
              color: AppColors.primery_color,
              borderRadius: BorderRadius.only(
                  //topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(10.0),
                  // topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(10.0)),
            ),
            width: double.infinity,
            height: 105,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Personal Information")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Image.asset(
                      'assets/images/step1.png',
                      height: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              //bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              //bottomLeft: Radius.circular(10.0)
            ),
          ),
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => FaceIdentity(),
                ),
              );
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: AppColors.primery_color,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " GO TO STEP 2 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: [
                    Text("Select Gender"),
                    Row(
                      children: [
                        Radio(
                          value: "Male",
                          groupValue: _genderRadioBtnVal,
                          onChanged: _handleGenderChange,
                        ),
                        Text("Male",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        Radio(
                          value: "Female",
                          groupValue: _genderRadioBtnVal,
                          onChanged: _handleGenderChange,
                        ),
                        Text("Female",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        Radio(
                          value: "Other",
                          groupValue: _genderRadioBtnVal,
                          onChanged: _handleGenderChange,
                        ),
                        Text("Other",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        // _formProvider.validateName(val);
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          //errorText: _formProvider.name.error,
                          hintText: "Enter First Name",
                          labelText: "Enter First Name"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        // _formProvider.validateName(val);
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          //errorText: _formProvider.name.error,
                          hintText: "Enter Last Name",
                          labelText: "Enter Last Name"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        // _formProvider.validateEmail(val);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          //  errorText: _formProvider.email.error,
                          hintText: "Enter Email",
                          labelText: "Enter Email"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        //  _formProvider.validatePhone(val);
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          // errorText: _formProvider.phone.error,
                          hintText: "Enter Birth Date",
                          labelText: "Enter Birth Date"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        //_formProvider.validatePassword(val);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          // errorText: _formProvider.password.error,
                          hintText: "Enter Address",
                          labelText: "Enter Address"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (String val) {
                        //  _formProvider.validatePhone(val);
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          // errorText: _formProvider.phone.error,
                          hintText: "Enter PinCode",
                          labelText: "Enter PinCode"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
