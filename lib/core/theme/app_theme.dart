import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.darkBackground),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.darkBackground,
    ),
  );
}
