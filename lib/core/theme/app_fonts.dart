import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  static const String fontFamily = 'Roboto';
  // Light text styles
  static final lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.lightText,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.lightText),
    bodyMedium: TextStyle(fontSize: 14, color: AppColors.lightSubText),
  );

  // Dark text styles
  static final darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.darkText,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkText),
    bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkSubText),
  );
}
