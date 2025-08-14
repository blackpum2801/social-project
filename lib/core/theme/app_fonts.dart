import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTypography {
  AppTypography._();

  // Base styles
  static final TextStyle _h1 = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700, // Bold
  );

  static final TextStyle _body = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
  );

  static final TextStyle _bodySecondary = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
  );

  // Light text theme
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: _h1.copyWith(color: AppColors.lightText),
    bodyLarge: _body.copyWith(color: AppColors.lightText),
    bodyMedium: _bodySecondary.copyWith(color: AppColors.lightSubText),
    titleMedium: _body.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColors.lightText,
    ),
    labelLarge: _bodySecondary.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColors.lightText,
    ),
  );

  // Dark text theme
  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: _h1.copyWith(color: AppColors.darkText),
    bodyLarge: _body.copyWith(color: AppColors.darkText),
    bodyMedium: _bodySecondary.copyWith(color: AppColors.darkSubText),
    titleMedium: _body.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColors.darkText,
    ),
    labelLarge: _bodySecondary.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColors.darkText,
    ),
  );

  static ThemeData applyLight(ThemeData base) =>
      base.copyWith(textTheme: lightTextTheme);

  static ThemeData applyDark(ThemeData base) =>
      base.copyWith(textTheme: darkTextTheme);
}
