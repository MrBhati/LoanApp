import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:loneapp/componets/AdmobHelper.dart';

import 'package:loneapp/componets/custom_app_bar.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/kyc_screens/basic_detaild.dart';
import 'package:loneapp/screens/menu/menu.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  InterstitialAd? _interstitialAd;
  int num_of_attempt_load = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              children:[
                 GestureDetector(
         onTap: () {
               Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Menu()));
         },
               child:   Icon(
                Icons.menu,
                color: Colors.white,
              )),
               SizedBox(
                  width: 15,
                ),
              Text("Dashbord"),
              ]
            ),
            
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
      // appBar: AppBar(
      //   toolbarHeight: 65,
      //   backgroundColor: Colors.transparent,
      //   automaticallyImplyLeading: true,
      //   title: Container(
      //     decoration: BoxDecoration(
      //       color: AppColors.primery_color,
      //       borderRadius: BorderRadius.only(
      //           //topRight: Radius.circular(40.0),
      //           bottomRight: Radius.circular(10.0),
      //           // topLeft: Radius.circular(40.0),
      //           bottomLeft: Radius.circular(10.0)),
      //     ),
      //     width: double.infinity,
      //     height: 65,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text("Dashboard"),
      //         Icon(
      //           Icons.menu,
      //           color: Colors.white,
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Container(
        height: 110,
        child: Column(
          children: [
             Container(
              
              height:60,
              
              width: double.infinity,
              decoration: BoxDecoration(
                             image: DecorationImage(
                image: AssetImage('assets/images/bottom.jpeg'),
                fit: BoxFit.fill,
              ),
             
              ),
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 5),
              child: GestureDetector(
                onTap: () {
                  createInterad();
                   showInterad();   
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasicDetails(),
                    ),
                  );
                },
                  // onTap: (){
                  //   createInterad();
                   
                  //    // call create Interstitial ads
                  // },
                  // onLongPress: (){
                  // //  showInterad();     // call  show Interstitial ads
                  // },
                child: Container(
            margin: const EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
             
                      color: AppColors.accent_color,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                          " GO TO ADD KYC ",
                          style: TextStyle(
                              color: AppColors.primery_color,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
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
          child: Column(
            
        children: [
       
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            padding: EdgeInsets.all(5),
           
            child:  
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text(
                  "Minimum Documentation needed &",
               style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w400,
                  ),
                ), 
                SizedBox(
                  height: 8,
                ),
                Text(
                  "very easy steps to use our loan",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                 Text(
                  "service",
                    style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ]),
          ),
          Container(
            height:150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
               color: AppColors.accent_color,
              borderRadius: BorderRadius.circular(10),
            
              boxShadow: [
                BoxShadow(color: AppColors.primery_color, spreadRadius: 1),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Maximum Loan Amount Upto",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              
                SizedBox(
                  height: 15,
                ),
                Text(
                  "1,00,000",
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            padding: EdgeInsets.all(25),
        
            child: Image.asset(
              'assets/images/homeStep.png',
              
            ),
          ),
        ],
      )),
    );
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
