import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: getProportionateScreenWidth(150),
                height: getProportionateScreenHeight(150),
                child: Image.asset("assets/images/LogoLight.png"),
              ),
              Form(
                child: Text("form login"),
              ),
              Text("login button"),
              Spacer(),
              Text("copyleft 2022"),
            ],
          ),
        ),
      ),
    );
  }
}
