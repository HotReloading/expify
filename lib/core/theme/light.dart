import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Appcolors.primaryColor,
  scaffoldBackgroundColor: Appcolors.lightScaffold,
  appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.primaryColor,
    foregroundColor: Appcolors.white,
  ),
);
