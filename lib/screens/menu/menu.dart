import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/extra/about.dart';
import 'package:loneapp/screens/extra/history.dart';
import 'package:loneapp/screens/extra/pp.dart';
import 'package:loneapp/screens/extra/tc.dart';
import 'package:loneapp/screens/splash_screen/splash.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _loginFormKey = GlobalKey<FormState>();

  bool _isloading = false;
  // TextEditingController mobileController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //   mobileController = TextEditingController();
  }

logOut()async{
 SharedPreferences prefs = await SharedPreferences.getInstance();
   
    prefs.setBool("isSubmited", false);
    Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Splash()));
}
   initiateTransaction() async {
    String upi_url =
        'mailto:instantfastl@gmail.com';
    await launch(upi_url).then((value) {
      print(value);
      var _duration = new Duration(seconds: 2);
   
          
    }).catchError((err) => print(err));
    
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Menu"),
            
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
               padding: const EdgeInsets.fromLTRB(60, 30, 60, 10),
          child: Column(
          children:[
Container(
               padding: const EdgeInsets.fromLTRB(20, 20, 28, 20),
             child:     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
             GestureDetector(
               onTap: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutUs()));
               },
               child: Image.asset(
                    'assets/images/au.png',
                    height: 100,
                  ),
             ),
                 GestureDetector(
                   onTap: (){
                     initiateTransaction();
                   },
                   child: Image.asset(
                  'assets/images/cu.png',
                  height: 100,
                ) ,)

                      
            ]), ),
            Container(
               padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
             child:     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
             GestureDetector(
               onTap: (){
 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => History()));
               },
               child: Image.asset(
                    'assets/images/lh.png',
                    height: 100,
                  ),
             ),
                  GestureDetector(
                    onTap: (){
 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicy()));
                    },
                    child: Image.asset(
                    'assets/images/pp.png',
                    height: 100,
                                  ),
                  ),

                      
            ]), ),
            Container(
               padding: const EdgeInsets.fromLTRB(0, 20, 28, 20),
             child:     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
             GestureDetector(
               onTap: (){
 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsandConditions()));
               },
               child: Image.asset(
                    'assets/images/tc.png',
                    height: 100,
                  ),
             ),
                  GestureDetector(
                    onTap: (){
logOut();

                    },
                    child: Image.asset(
                    'assets/images/lo.png',
                    height: 100,
                                  ),
                  ),

                      
            ]), ),

          ]
        )
        )
      ),
    );
  }
}
