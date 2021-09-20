import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';
import 'package:loneapp/componets/AdmobHelper.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/kyc_screens/face_identity.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:loneapp/utillity/form_validator.dart';
import 'package:overlay_screen/overlay_screen.dart';

class BasicDetails extends StatefulWidget {
  BasicDetails({Key? key}) : super(key: key);

  @override
  _BasicDetailsState createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  InterstitialAd? _interstitialAd;
  int num_of_attempt_load = 0;
  void _handleGenderChange(String? value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }


  TextEditingController dobController = TextEditingController();
    TextEditingController fnameController = TextEditingController();
      TextEditingController lnameController = TextEditingController();
        TextEditingController emailController = TextEditingController();
         TextEditingController pinController = TextEditingController();
          TextEditingController addressController = TextEditingController();
GlobalKey<FormState> basicInfoForm = new GlobalKey();
 DateTime currentDate = DateTime.now();
   String? _genderRadioBtnVal;
  var myFormat = DateFormat('yyyy-MM-d');
  @override
  void initState() {
  
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    OverlayScreen().saveScreens({
      'custom1': CustomOverlayScreen(
        backgroundColor: Colors.blue.withOpacity(0.5),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.backup,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Text(
              "Uploading data...",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      
    });
return Scaffold(
      
appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Basic Details"),
            
             Image.asset(
                  'assets/images/logo.jpeg',
                  height: 60,
                ),
          ]
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/images/new.jpeg'),
          fit: BoxFit.cover,
            
        ),
        backgroundColor: Colors.transparent,
      ),

    

  bottomNavigationBar: Container(
        
        height:150,
        
        width: double.infinity,
        decoration: BoxDecoration(
                       image: DecorationImage(
          image: AssetImage('assets/images/bottom.jpeg'),
          fit: BoxFit.fill,
        ),
       
        ),
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
        child: Column(
          children: [
            GestureDetector(
               onTap: () 
                
                async {
 createInterad();
                   showInterad();   
                   if (basicInfoForm.currentState!.validate()) {
                    OverlayScreen().show(context);
                    await Future.delayed(
                      Duration(seconds: 4),
                      () {
                        },
                    );
                    OverlayScreen().pop();
                           Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FaceIdentity(),
                    ),
                  );
                  };
                },
              child: Container(
      margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
       
                    color: AppColors.accent_color,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                        " Submit ",
                        style: TextStyle(
                            color: AppColors.primery_color,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                ),
              ),
            ),
            Container(
          child: AdWidget(
            ad: AdmobHelper.getBannerAd()..load(),
            key: UniqueKey(),
          ),
          height: 50,
        ),
      
          ],
        ),
  ),
       
        body: SafeArea(
      
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Form(
                 key:basicInfoForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                       validator: validateRequired,
                      controller: fnameController,
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
                       validator: validateRequired,
                      onChanged: (String val) {
                        // _formProvider.validateName(val);
                      },
                      keyboardType: TextInputType.name,
                      controller: lnameController,
                      decoration: InputDecoration(
                          //errorText: _formProvider.name.error,
                          hintText: "Enter Last Name",
                          labelText: "Enter Last Name"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                       validator: validateEmail,
                       controller: emailController,
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
                    InkWell(
                            onTap: (){selectDate(context);},
                            child: IgnorePointer(
                              child: TextFormField(
                                 validator: validateRequired,
                      onChanged: (String val) {
                        //  _formProvider.validatePhone(val);
                      },
                      keyboardType: TextInputType.phone,
                       controller: dobController,
                      decoration: InputDecoration(
                          // errorText: _formProvider.phone.error,
                          hintText: "Enter Birth Date",
                          labelText: "Enter Birth Date"),
                    ))),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                       validator: validateRequired,
                       controller: addressController,
                      onChanged: (String val) {
                        //_formProvider.validatePassword(val);
                      },
                   
                      decoration: InputDecoration(
                          // errorText: _formProvider.password.error,
                          hintText: "Enter Address",
                          labelText: "Enter Address"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                       validator: validateRequired,
                       controller: pinController,
                      onChanged: (String val) {
                        //  _formProvider.validatePhone(val);
                      },
                      keyboardType: TextInputType.phone,
                    maxLength: 6,
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
Future<void> selectDate(BuildContext context) async {
    final DateTime pickedDate = (await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1800),
        lastDate: DateTime(2010)))!;
    if (pickedDate != null && pickedDate != currentDate)
      currentDate = pickedDate;
    myFormat.format(pickedDate);
    print(myFormat.format(pickedDate).toString());
    dobController.text = myFormat.format(pickedDate).toString();

  }
   //Adds load methods


   // create interstitial ads
  void createInterad(){
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: AdRequest(),
        adLoadCallback:InterstitialAdLoadCallback(
            onAdLoaded: (InterstitialAd ad){
              _interstitialAd = ad;
              num_of_attempt_load =0;
            },
            onAdFailedToLoad: (LoadAdError error){
              num_of_attempt_load +1;
              _interstitialAd = null;
              if(num_of_attempt_load<=2){
                createInterad();
              }
            }),
    );
  }
// show interstitial ads to user
  void showInterad(){
     if(_interstitialAd == null){
       return;
     }
     _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
       onAdShowedFullScreenContent: (InterstitialAd ad){
         print("ad onAdshowedFullscreen");
       },
       onAdDismissedFullScreenContent: (InterstitialAd ad){
         print("ad Disposed");
         ad.dispose();
       },
       onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError aderror){
         print('$ad OnAdFailed $aderror');
         ad.dispose();
         createInterad();
       }
     );
     _interstitialAd!.show();
     _interstitialAd = null;
  }
}
