import 'package:flutter/material.dart';
import 'package:gpa_culator/core/theme/app_color.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xfff2f7fd),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xfff2f7fd),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfff2f7fd),
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: AppColor.darkBlue,
        size: 35,
      ),
    ),
  );
}
