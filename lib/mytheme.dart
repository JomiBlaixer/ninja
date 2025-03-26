import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color.fromRGBO(1, 75, 115, 1);
  static Color primaryAccent = const Color.fromRGBO(37, 161, 229, 1);
  static Color secundaryColor = const Color.fromRGBO(29, 29, 29, 1);
  static Color secundaryAccent = const Color.fromRGBO(49, 49, 49, 1);
  static Color textColor = const Color.fromRGBO(248, 248, 248, 1);
  static Color text1Color = const Color.fromRGBO(29, 29, 29, 1);
  static Color headingColor = const Color.fromRGBO(193, 193, 193, 1);
  static Color titleColor = const Color.fromRGBO(37, 161, 229, 1);
  // static Color primaryColor = const Color.fromRGBO(1, 75, 115, 1);
}

ThemeData myTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryAccent),
    scaffoldBackgroundColor: AppColor.secundaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.secundaryAccent,
      foregroundColor: AppColor.primaryAccent,
      surfaceTintColor: Colors.transparent,
      titleSpacing: 2.0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: AppColor.textColor,
          letterSpacing: 1.0),
      headlineMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColor.headingColor,
          letterSpacing: 1.0),
      titleMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: AppColor.titleColor,
          letterSpacing: 2.0),
    ),
    cardTheme: CardTheme(
      color: AppColor.primaryAccent.withValues(alpha: 400.0),
      margin: EdgeInsets.only(bottom: 20.0),
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIconColor: AppColor.textColor,
        labelStyle: TextStyle(color: AppColor.textColor),
        fillColor: AppColor.primaryAccent.withValues(alpha: 450.0),
        filled: true),
    dialogTheme: DialogTheme(
      backgroundColor: AppColor.primaryAccent,
      surfaceTintColor: Colors.transparent,
    )
//
    );
