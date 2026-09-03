import 'package:first_mile_club/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme get dark {
    return TextTheme(
      displayLarge: TextStyle(color: AppDarkColors.foreground),
      displayMedium: TextStyle(color: AppDarkColors.foreground),
      displaySmall: TextStyle(color: AppDarkColors.foreground),

      headlineLarge: TextStyle(color: AppDarkColors.foreground),
      headlineMedium: TextStyle(color: AppDarkColors.foreground),
      headlineSmall: TextStyle(color: AppDarkColors.foreground),

      titleLarge: TextStyle(color: AppDarkColors.foreground),
      titleMedium: TextStyle(color: AppDarkColors.foreground),
      titleSmall: TextStyle(color: AppDarkColors.foreground),

      bodyLarge: TextStyle(color: AppDarkColors.foreground),
      bodyMedium: TextStyle(color: AppDarkColors.foreground),
      bodySmall: TextStyle(color: AppDarkColors.subtleForeground),

      labelLarge: TextStyle(color: AppDarkColors.foreground),
      labelMedium: TextStyle(color: AppDarkColors.subtleForeground),
      labelSmall: TextStyle(color: AppDarkColors.subtleForeground),
    );
  }
}

