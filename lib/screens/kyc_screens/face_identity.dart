import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loneapp/componets/AdmobHelper.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/kyc_screens/aadhar_card_details.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';

class FaceIdentity extends StatefulWidget {
  FaceIdentity({Key? key}) : super(key: key);

  @override
  _FaceIdentityState createState() => _FaceIdentityState();
}

class _FaceIdentityState extends State<FaceIdentity> {
    InterstitialAd? _interstitialAd;
  int num_of_attempt_load = 0;
  XFile? _imageFace;
  bool isImageTaken = false;
  final ImagePicker _picker = ImagePicker();
  selectImage() async {
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
      );

      setState(() {
        _imageFace = pickedFile;
      });
    } catch (e) {
      setState(() {
        print("Error Wile get iamge");
      });
    }
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
                "Photo Required",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Face Phpto identy required plese uplode latest photo.",
                style: TextStyle(fontSize: 14),
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
                   
                    },
                    child: Text(
                      "OK",
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
    return Scaffold(

  appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Face Identity"),
            
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
        
        height:160,
        
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
             onTap: () {
                createInterad();
                   showInterad();   
                  if(_imageFace != null){
 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AadharCard(),
                    ),
                  );
                  }else{
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Face Image",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.green, spreadRadius: 1),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            _imageFace == null
                                ? "Uploade Face Image"
                                : "face_image.png",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primery_color,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                             createInterad();
                   showInterad();   
                            selectImage();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.primery_color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
   //Adds load methods


   // create interstitial ads
  void createInterad(){
    InterstitialAd.load(
        adUnitId: 'cca-app-pub-2343987874305145/6763155918',
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
