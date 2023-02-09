import 'package:flutter/material.dart';

import '../utils/colors.dart';

ThemeData theme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 50,
      fontFamily: 'orbit',
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 22,
      fontFamily: 'Noto',
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
    labelSmall: TextStyle(
      color: CommonColors.whiteColor,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: CommonColors.greencolor,
    ),
    labelLarge: TextStyle(
      color: CommonColors.greencolor,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: CommonColors.greencolor,
    ),
    titleLarge: TextStyle(fontSize: 25),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.5,
      ),
    ),
  ),
);
