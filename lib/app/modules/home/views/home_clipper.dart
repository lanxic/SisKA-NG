import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:siskang/app/global/utils/constants.dart';

class HomeClipperAppbar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class HomeClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ListKTA extends StatelessWidget {
  final labelKey;
  final labelValue;
  ListKTA({
    Key? key,
    required this.labelKey,
    required this.labelValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FractionColumnWidth(.2),
        1: FractionColumnWidth(.1 / 2),
      },
      children: [
        TableRow(
          children: [
            Text(
              this.labelKey,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              ":",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              this.labelValue,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
