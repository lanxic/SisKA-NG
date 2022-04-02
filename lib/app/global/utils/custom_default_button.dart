import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

class CustomDefaultButton extends StatelessWidget {
  final text;
  final isActive;
  final onpress;

  CustomDefaultButton({
    Key? key,
    required this.text,
    required this.onpress,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          primary: isActive ? kSecondaryColor : kDisableColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
