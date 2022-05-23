import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: getProportionateScreenWidth(150),
            height: getProportionateScreenHeight(150),
            child: Image.asset("assets/images/LogoLight.png"),
          ),
        ),
      ),
    );
  }
}
