import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryColorDark = Color.fromARGB(255, 20, 26, 46);
  static const Color accentColorDark = Color.fromARGB(255, 250, 204, 29);
  static const Color primaryColorLight = Colors.blue;

  static final ThemeData DarkTheme = ThemeData(
      backgroundColor: primaryColorDark,
      primaryColor: primaryColorDark,
      scaffoldBackgroundColor: primaryColorLight,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)));
  static final ThemeData LightTheme = ThemeData(
      backgroundColor: primaryColorDark,
      primaryColor: primaryColorLight,
      scaffoldBackgroundColor: primaryColorLight,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          headline2: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)));
}