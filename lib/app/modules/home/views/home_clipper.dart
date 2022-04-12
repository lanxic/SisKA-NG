import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:siskang/app/global/utils/constants.dart';

class HomeClipperAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        height: 200,
        color: kSecondaryColor,
      ),
    );
  }
}
