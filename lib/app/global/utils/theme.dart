import 'package:flutter/material.dart';
import 'package:siskang/app/global/utils/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryColor,
    // primarySwatch: kPrimaryColor,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(2),
    borderSide: BorderSide(color: kBorderColor),
    gapPadding: 5,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kPrimaryColor),
    bodyText2: TextStyle(color: kSecondaryColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF888888),
        fontSize: 18,
      ),
    ),
  );
}
