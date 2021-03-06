import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_default_button.dart';
import 'package:siskang/app/global/utils/custom_inputnumberform.dart';
import 'package:siskang/app/global/utils/custom_inputpasswdform.dart';
import 'package:siskang/app/routes/app_pages.dart';

class LoginFormView extends StatefulWidget {
  @override
  _LoginFormViewState createState() => _LoginFormViewState();
}

class _LoginFormViewState extends State<LoginFormView> {
  final _formKeySignIn = GlobalKey<FormState>();

  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isRemember = false;

  @override
  void initState() {}

  Future<void> _save() async {
    print("route to home after login");
    Get.offAllNamed(Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeySignIn,
      child: Column(
        children: [
          CustomInputNumberForm(
            inputController: nimController,
            label: "NIM *",
            isValidate: true,
            isEnable: true,
            readOnly: false,
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          CustomInputPasswdForm(
            inputController: passwordController,
            label: "Password (min: 6 digit)*",
            isValidate: true,
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          CustomDefaultButton(
            isActive: true,
            text: "Masuk",
            onpress: () => _save(),
          ),
        ],
      ),
    );
  }
}
