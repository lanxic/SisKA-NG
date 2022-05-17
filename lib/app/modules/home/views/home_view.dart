import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_version_view.dart';
import 'package:siskang/app/modules/home/views/home_clipper.dart';
import 'package:siskang/app/modules/home/views/home_menu_list_view.dart';
import 'package:siskang/app/modules/home/views/home_menu_model.dart';
import 'package:siskang/app/modules/home/views/home_menu_viewmodel.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final List<HomeMenuModel> _menu = HomeMenuViewModel().getMainMenu();
    print(Get.size);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                HomeClipperAppbar(),
                Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(50),
                    left: getProportionateScreenWidth(20),
                    right: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat datang :",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        "Anonymouse".toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Prodi :",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        "ILMU KOMPUTER".toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                MenuListView(menu: _menu),
              ],
            ),
            CustomVersionView(position: 345),
          ],
        ),
      ),
    );
  }
}
