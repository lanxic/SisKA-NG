import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_version_view.dart';
import 'package:siskang/app/modules/register/views/register_form_view.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrasi',
          style: TextStyle(color: kSecondaryColor),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Lengkapi akun secara detail",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  RegisterFormView(),
                  CustomVersionView(position: 150),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
