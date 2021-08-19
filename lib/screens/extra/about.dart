import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("AboutUs"),
            
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
               padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: SingleChildScrollView(
            child: Column(
            children:[
          
          Text(
                          "About Us",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:AppColors.primery_color,
                            fontSize: 18,
                          ),
                        ),
          
          SizedBox(height: 20,),
                        Text("We help you lend a fast and flexible loan through our strategically designed mobile application. It’s our dedication to granting you full transparency on our approach and process to give you the best possible chance to meet your financial demands.",
                           style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color:Colors.black45,
                            fontSize: 15,
                          ),
                        ),
            ]
                  ),
          )
        )
      ),
    );
  }
}
