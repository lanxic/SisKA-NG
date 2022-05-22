import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:siskang/app/global/utils/custom_newItem.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Selamat Siang, ",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(right: 20),
                width: 30,
                height: 30,
                child: IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  color: Colors.white,
                  onPressed: () {},
                )),
          ),
        ],
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: HomeClipperAppbar(),
              child: Container(
                height: 250,
                width: Get.width,
                color: kSecondaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: getProportionateScreenHeight(250),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/ktm_cleanup.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: getProportionateScreenWidth(70),
                          left: 110,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListKTA(
                              labelKey: "NIM",
                              labelValue: "2129101030",
                            ),
                            ListKTA(
                              labelKey: "Nama",
                              labelValue: "Rolando Alex Richo",
                            ),
                            ListKTA(
                              labelKey: "Prodi",
                              labelValue: "Ilmu Komputer (S2)",
                            ),
                            ListKTA(
                              labelKey: "Fakultas",
                              labelValue: "Pascasarjana",
                            ),
                            ListKTA(
                              labelKey: "Email",
                              labelValue: "rolando@undiksha.ac.id",
                            ),
                            ListKTA(
                              labelKey: "Status",
                              labelValue: "Semester II (Aktif)",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Diterbitkan pada 2022-05-22",
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 7,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MenuListView(menu: _menu),
                  ),
                  Container(
                    height: 7,
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Berita Terbaru",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/no_image.png",
                            judulBerita: "Seminar Nasional",
                            tglBerita: "16-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/no_image.png",
                            judulBerita: "Perkuliahan",
                            tglBerita: "16-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/90e3b2addf1d2c8b0579623cfbdb578f.jpg",
                            judulBerita: "ICONVET 2019",
                            tglBerita: "15-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/no_image.png",
                            judulBerita: "Seminar Nasional",
                            tglBerita: "16-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/no_image.png",
                            judulBerita: "Seminar Nasional",
                            tglBerita: "16-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                          NewsItemTerbaru(
                            fotoBerita:
                                "http://siska-ng.tech/assets/images/no_image.png",
                            judulBerita: "Seminar Nasional",
                            tglBerita: "16-07-2019",
                            detailBerita:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomVersionView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
