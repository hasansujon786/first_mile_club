import 'package:first_mile_club/core/theme/app_colors.dart';
import 'package:first_mile_club/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(useMaterial3: true, brightness: Brightness.light);
  }

  static ThemeData get dark {
    final colorScheme = ColorScheme.dark(
      // Main brand
      primary: AppDarkColors.primary,
      onPrimary: AppDarkColors.primaryForeground,

      // Secondary
      secondary: AppDarkColors.secondary,
      onSecondary: AppDarkColors.secondaryForeground,

      // Error
      error: AppDarkColors.error,
      onError: AppDarkColors.errorForeground,

      // Main surfaces
      surface: AppDarkColors.background,
      onSurface: AppDarkColors.foreground,

      // Containers
      surfaceContainerLowest: AppDarkColors.background,
      surfaceContainerLow: AppDarkColors.card,
      surfaceContainer: AppDarkColors.card,
      surfaceContainerHigh: AppDarkColors.elevated,
      surfaceContainerHighest: AppDarkColors.elevated,

      inverseSurface: AppDarkColors.foreground,
      onInverseSurface: AppDarkColors.background,
      inversePrimary: AppDarkColors.primary,

      // Borders / focus
      outline: AppDarkColors.outline,
      outlineVariant: AppDarkColors.border,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,

      scaffoldBackgroundColor: AppDarkColors.background,

      // ─────────────────────────────────────────────
      // App Bar
      // ─────────────────────────────────────────────
      appBarTheme: const AppBarTheme(
        backgroundColor: AppDarkColors.background,
        foregroundColor: AppDarkColors.foreground,
        surfaceTintColor: AppDarkColors.transparent,
        elevation: 0,
      ),

      // ─────────────────────────────────────────────
      // Text
      // ─────────────────────────────────────────────
      textTheme: AppTextTheme.dark,

      // ─────────────────────────────────────────────
      // Cards
      // ─────────────────────────────────────────────
      cardTheme: CardThemeData(
        color: AppDarkColors.card,
        surfaceTintColor: AppDarkColors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppDarkColors.cardBorder),
        ),
      ),

      // ─────────────────────────────────────────────
      // Input
      // ─────────────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppDarkColors.input,
        hintStyle: const TextStyle(color: AppDarkColors.placeholder),
        labelStyle: const TextStyle(color: AppDarkColors.subtleForeground),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppDarkColors.inputBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppDarkColors.inputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppDarkColors.ring, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppDarkColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppDarkColors.error, width: 2),
        ),
      ),

      // ─────────────────────────────────────────────
      // Elevated Button
      // ─────────────────────────────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppDarkColors.primary,
          foregroundColor: AppDarkColors.primaryForeground,
          disabledBackgroundColor: AppDarkColors.disabled,
          disabledForegroundColor: AppDarkColors.disabledForeground,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // ─────────────────────────────────────────────
      // Outlined Button
      // ─────────────────────────────────────────────
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppDarkColors.foreground,
          side: const BorderSide(color: AppDarkColors.outline),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // ─────────────────────────────────────────────
      // Text Button
      // ─────────────────────────────────────────────
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppDarkColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // ─────────────────────────────────────────────
      // Divider
      // ─────────────────────────────────────────────
      dividerTheme: const DividerThemeData(
        color: AppDarkColors.border,
        thickness: 1,
      ),

      // ─────────────────────────────────────────────
      // Checkbox
      // ─────────────────────────────────────────────
      checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: AppDarkColors.outline),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppDarkColors.primary;
          }

          return AppDarkColors.transparent;
        }),
        checkColor: WidgetStatePropertyAll(AppDarkColors.primaryForeground),
      ),

      // ─────────────────────────────────────────────
      // Switch
      // ─────────────────────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppDarkColors.primaryForeground;
          }

          return AppDarkColors.subtleForeground;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppDarkColors.primary;
          }

          return AppDarkColors.card;
        }),
      ),

      // ─────────────────────────────────────────────
      // Progress Indicator
      // ─────────────────────────────────────────────
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppDarkColors.primary,
      ),
    );
  }
}
