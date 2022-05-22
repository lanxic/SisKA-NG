import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:siskang/app/modules/settings/views/profile_view.dart';
import 'package:siskang/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan',
          style: TextStyle(color: kSecondaryColor),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios), onPressed: () => Get.back()),
      ),
      body: SafeArea(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: Text('Account'),
              tiles: [
                SettingsTile(
                  title: Text('Profile'),
                  value: Text('Nim: 2129101030'),
                  leading: Icon(Icons.person),
                  onPressed: (context) {
                    Get.toNamed(Routes.PROFILE);
                  },
                ),
                SettingsTile(
                  title: Text('Sign out'),
                  leading: Icon(Icons.exit_to_app),
                  onPressed: (context) {
                    Get.offAllNamed(Routes.LOGIN);
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text('Misc'),
              tiles: [
                SettingsTile(
                    title: Text('Terms of Service'),
                    leading: Icon(Icons.description)),
                SettingsTile(
                    title: Text('Open source licenses'),
                    leading: Icon(Icons.collections_bookmark)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
