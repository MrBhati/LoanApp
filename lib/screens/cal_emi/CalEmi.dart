import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/res/string_constant.dart';
import 'package:loneapp/screens/kyc_screens/pan_card_details.dart';
import 'package:loneapp/screens/pay/pay.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:url_launcher/url_launcher.dart';

class CalEMI extends StatefulWidget {
  CalEMI({Key? key}) : super(key: key);

  @override
  _CalEMIState createState() => _CalEMIState();
}

class _CalEMIState extends State<CalEMI> {
  List<bool> _selections = List.generate(3, (_) => false);
  bool _value = false;
  double val = 20000;
  String selectedAmountButton = '20,000';
  String selectedDayButtion = '120';
  String securityDeposity = '292';
  String intrest = '1000';
  String rePayment = '20,718';
  List<String> amounts = ['20,000', '30,000', '50,000', '80,000', '1,00,000'];
  List<String> days = ['120', '180', '180', '180', '180'];
  String disbursal = '20,000';
  String payLink = StringConstant.pay292;

 initiateTransaction() async {
    String upi_url =
        payLink;
    await launch(upi_url).then((value) {
      print(value);
        Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Pay(),
              ),
            );
    }).catchError((err) => print(err));
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
                  Text("Pan Card Information")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Center(
                  child: Image.asset(
                    'assets/images/step4.png',
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
         initiateTransaction();
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
                    " Submit ",
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
}
