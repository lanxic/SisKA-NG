import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/controller/auth_controller.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/loading_screen.dart';
import 'package:siskang/app/global/utils/splash_screen.dart';
import 'package:siskang/app/global/utils/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kPrimaryColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(SiskaNGAPP());
}

class SiskaNGAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authC = Get.put(AuthController(), permanent: true);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return Obx(
              () {
                return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: theme(),
                  title: "SisKA-NG",
                  initialRoute: authC.isSkipIntro.isTrue
                      ? authC.isAuth.isTrue
                          ? Routes.HOME
                          : Routes.LOGIN
                      : Routes.HOME,
                  getPages: AppPages.routes,
                );
              },
            );
          }
        },
      ),
    );
  }
}
