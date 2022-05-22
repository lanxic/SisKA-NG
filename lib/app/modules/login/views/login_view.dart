import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/login/views/login_form_view.dart';
import 'package:siskang/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(100),
                  ),
                  Container(
                    width: getProportionateScreenWidth(150),
                    height: getProportionateScreenHeight(150),
                    child: Image.asset("assets/images/LogoLight.png"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  LoginFormView(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Center(
                    child: Text(
                      "- Atau -",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    children: [
                      Text(
                        "jika belum memiliki akun?",
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          print("route to register page");
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: kBorderColor,
                            ),
                          ),
                          child: Text(
                            " klik registrasi ",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
