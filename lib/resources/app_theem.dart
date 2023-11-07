import 'package:employee__app/resources/app_theem_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appThemeData() {
    OutlineInputBorder activeInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(width: 1, color: AppColors.gray));
    OutlineInputBorder errorInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(width: 1, color: AppColors.read));

    InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.all(8),
        prefixIconColor: AppColors.primary,
        suffixIconColor: AppColors.primary,
        border: activeInputBorder,
        focusedBorder: activeInputBorder,
        enabledBorder: activeInputBorder,
        errorBorder: errorInputBorder,
        focusedErrorBorder: errorInputBorder,
        labelStyle: AppTextStyles.bodyLargeNormal
            .copyWith(color: AppColors.textSecondary));
    TextTheme textTheme = TextTheme(titleMedium: AppTextStyles.bodyLargeNormal);
    AppBarTheme appBarTheme = AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        titleSpacing: 16,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle:
            AppTextStyles.extraLargeMedium.copyWith(color: AppColors.white));

    ColorScheme appColorScheme = ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        secondary: AppColors.secondary,
        onSecondary: AppColors.primary,
        error: AppColors.read,
        onSurface: AppColors.textPrimary);
    FloatingActionButtonThemeData floatingActionButtonThemeData =
        FloatingActionButtonThemeData(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)));
    ThemeData appThemeData = ThemeData(
        textTheme: textTheme,
        appBarTheme: appBarTheme,
        colorScheme: appColorScheme,
        textButtonTheme:
            TextButtonThemeData(style: AppButtonStyles.textButtonStyle),
        floatingActionButtonTheme: floatingActionButtonThemeData,
        inputDecorationTheme: inputDecorationTheme,
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: AppButtonStyles.primaryButtonStyle));
    return appThemeData;
  }
}
