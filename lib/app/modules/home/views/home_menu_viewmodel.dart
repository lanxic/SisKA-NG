import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/modules/home/views/home_menu_model.dart';

class HomeMenuViewModel {
  List<HomeMenuModel> getMainMenu() {
    return [
      HomeMenuModel(
        image: Icons.local_mall,
        title: "Menu1",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu1");
        },
      ),
      HomeMenuModel(
        image: Icons.event_note,
        title: "Menu2",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu2");
        },
      ),
      HomeMenuModel(
        image: Icons.store,
        title: "Menu3",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu3");
        },
      ),
      HomeMenuModel(
        image: Icons.content_copy,
        title: "Menu4",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu4");
        },
      ),
      HomeMenuModel(
        image: Icons.assignment,
        title: "Menu5",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Menu5");
        },
      ),
      HomeMenuModel(
        image: Icons.settings,
        title: "Pengaturan",
        color: kPrimaryColor,
        role: "admin",
        onPress: () {
          print("Loading Pengaturan");
        },
      ),
    ];
  }
}
