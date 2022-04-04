import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/home/views/home_clipper.dart';
import 'package:siskang/app/modules/home/views/home_menu_model.dart';
import 'package:siskang/app/modules/home/views/home_menu_viewmodel.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final List<HomeMenuModel> _menu = HomeMenuViewModel().getMainMenu();
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
                  child: Row(
                    children: [
                      Text(
                        "Selamat datang! ",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        "Rolando Alex Richo",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(150),
                    ),
                    height: getProportionateScreenHeight(300),
                    width: getProportionateScreenWidth(350),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(5),
                        ),
                        child: Center(
                          child: GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(25)),
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                            ),
                            itemCount: _menu.length,
                            itemBuilder: (context, index) {
                              final HomeMenuModel menu = _menu[index];
                              return Column(
                                children: [
                                  Container(
                                    height: getProportionateScreenHeight(70),
                                    child: OutlinedButton(
                                      onPressed: () =>
                                          Get.toNamed(menu.onPress),
                                      child: Icon(
                                        menu.image,
                                        color: menu.color,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    menu.title,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
