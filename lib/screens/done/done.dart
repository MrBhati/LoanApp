import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:loneapp/screens/cal_emi/CalEmi.dart';
class Done extends StatefulWidget {
  Done({Key? key}) : super(key: key);

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
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
       appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
           
            
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
        
        height:100,
        
        width: double.infinity,
        decoration: BoxDecoration(
                       image: DecorationImage(
          image: AssetImage('assets/images/bottom.jpeg'),
          fit: BoxFit.fill,
        ),
       
        ),
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
      
      ),
      body: SafeArea(
        child: Container(
               padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: Column(
          children:[
  SizedBox(height: 20),
            Container(
               padding: const EdgeInsets.fromLTRB(20, 20, 28, 10),
             child:    Text(
                        "Congratulation",
                        style: TextStyle(
                          fontSize: 30,
                          color: AppColors.primery_color,
                          fontWeight: FontWeight.w700,
                        ),
                      ),),
                        SizedBox(height: 10),
                       Text(
                        "Your Loan Application Successfully Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 8),
                        Text(
                        "you will get Loan within work in 7 days",
                        style: TextStyle(
                          color: AppColors.primery_color,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                       SizedBox(height: 50),
GestureDetector(
           onTap: () {
 Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CalEMI(),
                ),
              );
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
                    " OK ",
                    style: TextStyle(
                        color: AppColors.primery_color,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
            ),
          ),
        ),
                       Text(
                        "Loan History",
                        style: TextStyle(
                           color: AppColors.primery_color,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                       SizedBox(height: 100),
                     
Container(
               padding: const EdgeInsets.fromLTRB(20, 20, 28, 20),
             child: Text(
                        "Thank you for using Instant fast Loan",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ), ),
           

          ]
        )
        )
      ),
    );
  }
}
