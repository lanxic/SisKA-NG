import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';
import 'package:settings_ui/settings_ui.dart';

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
              title: Text('Common'),
              tiles: [
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
              ],
            ),
            SettingsSection(
              title: Text('Account'),
              tiles: [
                SettingsTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.person),
                ),
                SettingsTile(
                  title: Text('Sign out'),
                  leading: Icon(Icons.exit_to_app),
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
