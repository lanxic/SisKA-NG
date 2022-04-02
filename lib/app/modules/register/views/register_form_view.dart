import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_default_button.dart';
import 'package:siskang/app/global/utils/custom_inputemailform.dart';
import 'package:siskang/app/global/utils/custom_inputnumberform.dart';
import 'package:siskang/app/global/utils/custom_inputpasswdnumberform.dart';
import 'package:siskang/app/global/utils/custom_inputstringform.dart';

class RegisterFormView extends StatefulWidget {
  @override
  _RegisterFormViewState createState() => _RegisterFormViewState();
}

class _RegisterFormViewState extends State<RegisterFormView> {
  final storage = new FlutterSecureStorage();

  final _formKeySignUp = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _clearCache();
  }

  void _clearCache() async {
    await storage.deleteAll();
  }

  Future<void> _save() async {
    print("simpan data register");
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeySignUp,
      child: Column(
        children: [
          CustomInputStringForm(
            inputController: nameController,
            label: "Nama Lengkap Sesuai KTP *",
            isValidate: true,
            readOnly: false,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          CustomInputEmailForm(
            inputController: emailController,
            label: "Email *",
            isValidate: true,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          CustomInputNumberForm(
            inputController: nimController,
            label: "NIM *",
            isValidate: true,
            isEnable: true,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          CustomInputPasswdNumberForm(
            inputPWController: passwordController,
            inputRPWController: confirmPasswordController,
            isValidate: true,
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          CustomDefaultButton(
            isActive: true,
            text: "Daftar",
            onpress: () => _save(),
          ),
        ],
      ),
    );
  }
}
