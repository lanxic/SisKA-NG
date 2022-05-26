import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siskang/app/global/utils/custom_notificationItem.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  List<int> items = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: tileNotification(items: items),
      ),
    );
  }
}

class tileNotification extends StatefulWidget {
  const tileNotification({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<int> items;

  @override
  State<tileNotification> createState() => _tileNotificationState();
}

class _tileNotificationState extends State<tileNotification> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            color: Colors.grey[300],
          ),
          key: ValueKey<int>(widget.items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              widget.items.removeAt(index);
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: notificationItem(
              fotoPesan: "http://siska-ng.tech/assets/images/no_image.png",
              judulPesan: "Seminar Nasional",
              tglPesan: "16-07-2019",
              detailPesan:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            ),
          ),
        );
      },
    );
  }
}
