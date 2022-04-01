import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kPrimaryColor = Color(0xFF87CEEB);
const kSecondaryColor = Color(0xFF000088);
const kBorderColor = Color(0xFF888888);

const kAnimationDuration = Duration(milliseconds: 200);

const kDisableColor = Color(0xFF9B9B9B);

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = Get.size.height;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = Get.size.width;
  return (inputWidth / 375.0) * screenWidth;
}
