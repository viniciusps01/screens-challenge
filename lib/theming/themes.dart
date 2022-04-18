import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

final defaultTheme = ThemeData(
  primaryColor: primaryColor,
  iconTheme: IconThemeData(
    color: primaryColor,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: primaryColor,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        color: primaryColor,
      ),
    ),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
    elevation: 0,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),
  canvasColor: Colors.white,
);
