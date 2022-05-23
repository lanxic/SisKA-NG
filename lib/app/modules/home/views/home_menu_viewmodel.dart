import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/home/views/home_menu_model.dart';
import 'package:siskang/app/routes/app_pages.dart';

class HomeMenuViewModel {
  List<HomeMenuModel> getMainMenu() {
    return [
      HomeMenuModel(
        image: Icons.book,
        title: "Penelitian",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu3");
        },
      ),
      HomeMenuModel(
        image: Icons.rss_feed,
        title: "Berita",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu2");
        },
      ),
      HomeMenuModel(
        image: Icons.calendar_today,
        title: "Jadwal",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu3");
        },
      ),
      HomeMenuModel(
        image: Icons.book,
        title: "Panduan",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu2");
        },
      ),
      HomeMenuModel(
        image: Icons.timeline,
        title: "Timeline",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu1");
        },
      ),
      HomeMenuModel(
        image: Icons.settings,
        title: "Pengaturan",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Pengaturan");
          Get.toNamed(Routes.SETTINGS);
        },
      ),
      HomeMenuModel(
        image: Icons.book,
        title: "Repositori",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu2");
        },
      ),
    ];
  }
}
