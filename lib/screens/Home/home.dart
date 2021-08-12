import 'package:flutter/material.dart';
import 'package:loneapp/componets/custom_app_bar.dart';
import 'package:loneapp/res/colors_constant.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
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
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dashboard"),
              Icon(
                Icons.menu,
                color: Colors.white,
              )
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
                  " GO TO ADD KYC ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_right_outlined,
                  size: 18,
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 1),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.jpeg',
                  height: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Instance Fast Loan",
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 1),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Get your Expected Loan with Instant Fast Loan",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Maximum Loan Provide Upto",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primery_color,
                    fontWeight: FontWeight.w300,
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 1),
              ],
            ),
            child: Image.asset(
              'assets/images/step.png',
              height: 200,
            ),
          ),
        ],
      )),
    );
  }
}
