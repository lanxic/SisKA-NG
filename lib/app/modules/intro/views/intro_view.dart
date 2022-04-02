import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/intro/views/intro_model.dart';
import 'package:siskang/app/modules/intro/views/intro_view_model.dart';
import 'package:siskang/app/routes/app_pages.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    final List<IntroModel> splashData = IntroViewModel().getIntroList();
    return Scaffold(
      body: IntroductionScreen(
        pages: splashData
            .map(
              (e) => PageViewModel(
                title: e.title,
                body: e.body,
                image: Container(
                  width: getProportionateScreenWidth(300),
                  height: getProportionateScreenHeight(300),
                  child: Center(
                    child: Lottie.asset("assets/lottie/main-laptop-duduk.json"),
                  ),
                ),
              ),
            )
            .toList(),
        onDone: () => Get.offAllNamed(Routes.LOGIN),
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(color: kSecondaryColor),
        ),
        next: Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.bold, color: kSecondaryColor),
        ),
        done: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w600, color: kSecondaryColor),
        ),
      ),
    );
  }
}
