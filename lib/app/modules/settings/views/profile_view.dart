import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

import 'package:get/get.dart';
import 'package:siskang/app/modules/settings/views/profile_form_view.dart';

class ProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    var myMenuItems = <String>[
      'Change Password',
      'Change Photo Profile',
    ];

    void onSelect(item) {
      switch (item) {
        case 'Change Password':
          print('chg clicked');
          break;
        case 'Change Photo Profile':
          print('Profile clicked');
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: kSecondaryColor),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        actions: [
          PopupMenuButton<String>(
              onSelected: onSelect,
              itemBuilder: (BuildContext context) {
                return myMenuItems.map((String choice) {
                  return PopupMenuItem<String>(
                    child: Text(choice),
                    value: choice,
                  );
                }).toList();
              })
        ],
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
                  ProfileFormView(
                    imageUrl:
                        "http://siska-ng.tech/assets/images/2129101030_foto_-1638408462.png",
                    name: "Rolando Alex Richo",
                    nim: "2129101030",
                    email: "rolando@undiksha.ac.id",
                    smtr: "Semester 2",
                    prodi: "Ilmu Komputer (S2)",
                    fakultas: "Pascasarjana",
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
