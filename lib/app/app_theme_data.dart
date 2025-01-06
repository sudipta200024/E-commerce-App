import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500
          ),

        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.themeColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.themeColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.themeColor,
              width: 1,
            ),
          ),
        ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            fixedSize: const Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12)
        )
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.themeColor,
        )
      )
    );
  }

  static ThemeData get darkThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0x000000F7));
  }
}
