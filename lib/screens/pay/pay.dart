import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  initiateTransaction() async {
    String upi_url =
        'https://imjo.in/zeHj5H';
    await launch(upi_url).then((value) {
      print(value);
    }).catchError((err) => print(err));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Payment'),
      ),
      body: Center(
        child: Column(
          children: [
       Text(
                'Thanks For Payment you will get Notifye soon..',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
