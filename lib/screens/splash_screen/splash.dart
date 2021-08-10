import 'package:flutter/material.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/splash_screen/model/splash_base_model.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SplashScreenBaseModel>(
      create: (context) => SplashScreenBaseModel(context: context),
      lazy: false,
      child: Consumer<SplashScreenBaseModel>(builder: (context, data, child) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              child: Column(children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[],
                      ),
                    ),
                  ),
                ),
                Flexible(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.jpeg",
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Instant Fast Loan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.primery_color,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      "By digverve",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primery_color,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        );
      }),
    );
  }
}
