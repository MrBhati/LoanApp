import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loneapp/componets/AdmobHelper.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/res/string_constant.dart';
import 'package:loneapp/screens/kyc_screens/pan_card_details.dart';
import 'package:loneapp/screens/done/done.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class CalEMI extends StatefulWidget {
  CalEMI({Key? key}) : super(key: key);

  @override
  _CalEMIState createState() => _CalEMIState();
}

class _CalEMIState extends State<CalEMI> {
    InterstitialAd? _interstitialAd;
  int num_of_attempt_load = 0;
  List<bool> _selections = List.generate(3, (_) => false);
  bool _value = false;
  double val = 20000;
  String selectedAmountButton = '20,000';
  String selectedDayButtion = '120';
  String securityDeposity = '292';
  String intrest = '1000';
  String rePayment = '20,718';
  List<String> amounts = ['20,000', '30,000', '50,000', '80,000', '1,00,000'];
  List<String> days = ['120', '180', '240', '300', '360'];
  String disbursal = '20,000';
  String payLink = StringConstant.pay292;


void navigationPage() {

      Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Done()));
  }

 initiateTransaction() async {
    String upi_url =
        payLink;
    await launch(upi_url).then((value) {
      print(value);
      var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
          
    }).catchError((err) => print(err));
     SharedPreferences prefs = await SharedPreferences.getInstance();
   
    prefs.setBool("isSubmited", true);
  }

  void updateAmount() {
    setState(() {
      if (selectedAmountButton == "20,000") {
        setState(() {
          payLink = StringConstant.pay292;
        });
        switch (selectedDayButtion) {
          case '120':
            setState(() {
              disbursal = '20,000';
              intrest = '1000';
              rePayment = '20,718';
              securityDeposity = '292';
            });
            break;
          case '180':
            setState(() {
              disbursal = '20,000';
              intrest = '1407';
              rePayment = '21,125';
              securityDeposity = '292';
            });
            break;
          case '240':
            setState(() {
              disbursal = '20,000';
              intrest = '1947';
              rePayment = '21,665';
              securityDeposity = '292';
            });
            break;
          case '300':
            setState(() {
              disbursal = '20,000';
              intrest = '2446';
              rePayment = '22,164';
              securityDeposity = '292';
            });
            break;
          case '360':
            setState(() {
              disbursal = '20,000';
              intrest = '2996';
              rePayment = '22,713';
              securityDeposity = '292';
            });
            break;
        }
      } else if (selectedAmountButton == "30,000") {
        setState(() {
          payLink = StringConstant.pay392;
        });
        switch (selectedDayButtion) {
          case '120':
            setState(() {
              disbursal = '30,000';
              intrest = '1500';
              rePayment = '31,118';
              securityDeposity = '392';
            });
            break;
          case '180':
            setState(() {
              disbursal = '30,000';
              intrest = '2200';
              rePayment = '31,818';
              securityDeposity = '392';
            });
            break;
          case '240':
            setState(() {
              disbursal = '30,000';
              intrest = '2950';
              rePayment = '32,568';
              securityDeposity = '392';
            });
            break;
          case '300':
            setState(() {
              disbursal = '30,000';
              intrest = '3690';
              rePayment = '33,308';
              securityDeposity = '392';
            });
            break;
          case '360':
            setState(() {
              disbursal = '30,000';
              intrest = '4433';
              rePayment = '34,048';
              securityDeposity = '392';
            });
            break;
        }
      } else if (selectedAmountButton == "50,000") {
        setState(() {
          payLink = StringConstant.pay492;
        });
        switch (selectedDayButtion) {
          case '120':
            setState(() {
              disbursal = '50,000';
              intrest = '2500';
              rePayment = '52,018';
              securityDeposity = '492';
            });
            break;
          case '180':
            setState(() {
              disbursal = '50,000';
              intrest = '3699';
              rePayment = '53,218';
              securityDeposity = '492';
            });
            break;
          case '240':
            setState(() {
              disbursal = '50,000';
              intrest = '4493';
              rePayment = '54,011';
              securityDeposity = '492';
            });
            break;
          case '300':
            setState(() {
              disbursal = '50,000';
              intrest = '6616';
              rePayment = '56,234';
              securityDeposity = '492';
            });
            break;
          case '360':
            setState(() {
              disbursal = '50,000';
              intrest = '7359';
              rePayment = '56,877';
              securityDeposity = '492';
            });
            break;
        }
      } else if (selectedAmountButton == "80,000") {
        setState(() {
          payLink = StringConstant.pay592;
        });
        switch (selectedDayButtion) {
          case '120':
            setState(() {
              disbursal = '80,000';
              intrest = '5000';
              rePayment = '84,418';
              securityDeposity = '592';
            });
            break;
          case '180':
            setState(() {
              disbursal = '80,000';
              intrest = '7399';
              rePayment = '86,817';
              securityDeposity = '592';
            });
            break;
          case '240':
            setState(() {
              disbursal = '80,000';
              intrest = '9986';
              rePayment = '89,404';
              securityDeposity = '592';
            });
            break;
          case '300':
            setState(() {
              disbursal = '80,000';
              intrest = '12,332';
              rePayment = '91,750';
              securityDeposity = '592';
            });
            break;
          case '360':
            setState(() {
              disbursal = '80,000';
              intrest = '14,779';
              rePayment = '94,197';
              securityDeposity = '592';
            });
            break;
        }
      } else if (selectedAmountButton == "1,00,000") {
        setState(() {
          payLink = StringConstant.pay692;
        });
        switch (selectedDayButtion) {
          case '120':
            setState(() {
              disbursal = '1,00,000';
              intrest = '10,002';
              rePayment = '1,09,320';
              securityDeposity = '692';
            });
            break;
          case '180':
            setState(() {
              disbursal = '1,00,000';
              intrest = '14.479';
              rePayment = '1,13,797';
              securityDeposity = '692';
            });
            break;
          case '240':
            setState(() {
              disbursal = '1,00,000';
              intrest = '19,972';
              rePayment = '1,19,290';
              securityDeposity = '692';
            });
            break;
          case '300':
            setState(() {
              disbursal = '1,00,000';
              intrest = '24,465';
              rePayment = '1,23,783';
              securityDeposity = '692';
            });
            break;
          case '360':
            setState(() {
              disbursal = '1,00,000';
              intrest = '29,958';
              rePayment = '1,29,276';
              securityDeposity = '692';
            });
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
  appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Calculate EMI"),
            
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
        
        height:110,
        
        width: double.infinity,
        decoration: BoxDecoration(
                       image: DecorationImage(
          image: AssetImage('assets/images/bottom.jpeg'),
          fit: BoxFit.fill,
        ),
       
        ),
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
        child: Column(
          children: [
            GestureDetector(
              
               onTap: () {
                  createInterad();
                   showInterad();   
             initiateTransaction();
              },
              child: Container(
      margin: const EdgeInsets.all(0.0),
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
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Loan Amount - (₹)"),
                        Container(
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: amounts.length,
                            itemBuilder: (context, position) {
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedAmountButton = amounts[position];
                                    });
                                    updateAmount();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: selectedAmountButton ==
                                                amounts[position]
                                            ? AppColors.primery_color
                                            : Colors.black26,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            amounts[position],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Teem - (Day)"),
                        Container(
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: days.length,
                            itemBuilder: (context, position) {
                              return GestureDetector(
                                  onTap: () {
                                     createInterad();
                   showInterad();   
                                    setState(() {
                                      selectedDayButtion = days[position];
                                    });
                                    updateAmount();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color:
                                            selectedDayButtion == days[position]
                                                ? AppColors.primery_color
                                                : Colors.black26,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            days[position],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                            },
                          ),
                        )
                      ])),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Disbursal",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          Text("₹ " + disbursal,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Intrest",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          Text("₹ " + intrest,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text("Repayment",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Text("(-₹ " + securityDeposity + ")",
                                style: TextStyle(
                                    color: AppColors.primery_color,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ]),
                          Text("₹ " + rePayment,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Security Deposit",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          Text("₹ " + securityDeposity,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "To get this amount, you should pay for this fee first, which can verify your solvency",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.primery_color,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
    //     child: ListView.builder(

    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //         title: GestureDetector(
    //             onTap: () {
    //               setState(() {
    //                 selectedButton = items[index];
    //               });
    //             },
    //             child: Container(
    //               margin: EdgeInsets.all(10),
    //               height: 40,
    //               width: 120,
    //               decoration: BoxDecoration(
    //                   color: selectedButton == items[index]
    //                       ? AppColors.primery_color
    //                       : Colors.black,
    //                   borderRadius: BorderRadius.all(Radius.circular(6))),
    //               alignment: Alignment.center,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Text(
    //                       items[index],
    //                       style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w600),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             )));
    //   },
    // )
    //  child: SingleChildScrollView(
    //  child: Container(
    //   padding: EdgeInsets.all(20),
    // child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [

    // SizedBox(
    //   height: 20,
    // ),

    // Container(
    //   //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //   padding: EdgeInsets.all(5),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Colors.white,
    //     boxShadow: [
    //       BoxShadow(color: Colors.green, spreadRadius: 1),
    //     ],
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text("Loan Amount - (₹)"),
    //       Container(
    //         margin: EdgeInsets.symmetric(vertical: 1.0),
    //         height: 60,
    //         child: ListView(
    //           scrollDirection: Axis.horizontal,
    //           children: <Widget>[
    //             amountRange("20000"),
    //             amountRange("30000"),
    //             amountRange("50000"),
    //             amountRange("80000"),
    //             amountRange("100000"),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 10,
    //       ),
    //       Text("Teem - (Day)"),
    //       Container(
    //         margin: EdgeInsets.symmetric(vertical: 1.0),
    //         height: 60,
    //         child: ListView(
    //           scrollDirection: Axis.horizontal,
    //           children: <Widget>[
    //             timeRange("120"),
    //             timeRange("180"),
    //             timeRange("240"),
    //             timeRange("300"),
    //             timeRange("360"),
    //           ],
    //         ),
    //       ),
    //       Row(
    //         children: [],
    //       ),
    //     ],
    //   ),
    // ),
    // Container(
    //   padding: EdgeInsets.only(top: 20),
    //   child: Column(
    //     children: [
    //       Container(
    //         height: 1,
    //         width: double.infinity,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(top: 10, bottom: 10),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text("Disbursal",
    //                 style: TextStyle(
    //                     color: Colors.black54,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500)),
    //             Text("₹ 20000",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500))
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 1,
    //         width: double.infinity,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(top: 10, bottom: 10),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text("Disbursal",
    //                 style: TextStyle(
    //                     color: Colors.black54,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500)),
    //             Text("₹ 20000",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500))
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 1,
    //         width: double.infinity,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(top: 10, bottom: 10),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text("Disbursal",
    //                 style: TextStyle(
    //                     color: Colors.black54,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500)),
    //             Text("₹ 20000",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500))
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 1,
    //         width: double.infinity,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(top: 10, bottom: 10),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text("Disbursal",
    //                 style: TextStyle(
    //                     color: Colors.black54,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500)),
    //             Text("₹ 20000",
    //                 style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.w500))
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 1,
    //         width: double.infinity,
    //         color: Colors.green,
    //       ),
    //     ],
    //   ),
    // ),
    // SizedBox(
    //   height: 20,
    // ),
    // Text(
    //   "To get this amount, you should pay for this fee first, which can verify your solvency",
    //   textAlign: TextAlign.center,
    //   style: TextStyle(
    //       color: AppColors.primery_color,
    //       fontSize: 16,
    //       fontWeight: FontWeight.w500),
    // )
    //       ],
    //     ),
    //   ),
    // ),
  }

  Widget amountRange(val) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 40,
      width: 120,
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
              val,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeRange(val) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 40,
      width: 120,
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
              val,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
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
