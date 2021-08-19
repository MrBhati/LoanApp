import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:url_launcher/url_launcher.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("History"),
            
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

Text(
                        "No history is available",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:Colors.black45,
                          fontSize: 15,
                        ),
                      ),
          ]
        )
        )
      ),
    );
  }
}
