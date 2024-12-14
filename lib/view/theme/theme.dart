import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: backGroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: lightGreyColor, fontSize: 14, fontWeight: FontWeight.w400),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: whiteColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      titleTextStyle: const TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      centerTitle: true,
    ),
  );
}
