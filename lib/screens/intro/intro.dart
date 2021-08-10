import 'package:flutter/material.dart';
import 'package:loneapp/screens/intro/model/intro_basemodel.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<IntroBaseModel>(
      create: (context) => IntroBaseModel(context: context),
      lazy: false,
      child: Consumer<IntroBaseModel>(builder: (context, data, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 500,
                child: PageView(
                  controller: data.controller,
                  onPageChanged: (page) {
                    data.changePageView(page);
                  },
                  children: <Widget>[
                    pageWidget(
                        "assets/images/intro_1.jpg",
                        "Quick Login With Mobile number",
                        "Use mobile mumber wich is registerd with Your bank account"),
                    pageWidget(
                        "assets/images/intro_2.jpg",
                        "Submit KYC Details",
                        "Sumbit PAN Card And Addhar Card Details."),
                    pageWidget(
                        "assets/images/intro_3.jpg",
                        "Select Amount And EMI Duration",
                        "Get 10000 rupice lone with fluxible EMI Duration"),
                    pageWidget("assets/images/intro_3.jpg", "Enjoiy !!!!",
                        "Lone Amount Transfter to your Account. "),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: data.controller, // PageController
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.green,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                ), // your preferred effect
              )
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 44,
              width: MediaQuery.of(context).size.width / 2,
              child: RaisedButton(
                color: Color(0xfff36f3e),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  data.gotoNext();
                },
                child: Text(
                  data.page_count == 2 ? "Get Started" : "Next",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget pageWidget(img, title, sub_title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          img,
          height: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            sub_title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                // fontWeight: FontWeight.w400,
                color: Colors.grey[600]),
          ),
        ),
      ],
    );
  }
}
