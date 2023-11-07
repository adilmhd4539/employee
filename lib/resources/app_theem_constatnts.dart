import 'package:flutter/material.dart';

class AppColors {
  static Color get primary => const Color(0XFF1DA1F2);
  static Color get secondary => const Color(0XFFEDF8FF);
  static Color get textPrimary => const Color(0XFF323238);
  static Color get textSecondary => const Color(0XFF949C9E);
  static Color get gray => const Color(0XFFE5E5E5);
  static Color get darkGray => const Color(0XFFD2D2D2);
  static Color get borderGray => const Color(0XFFF2F2F2);
  static Color get white => Colors.white;
  static Color get black => Colors.black;
  static Color get orenge => const Color(0XFFF34642);
  static Color get read => Colors.red;
  static Color get green => Colors.green;
}

class AppTextStyles {
  static TextStyle get bodyNormal => TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textPrimary);
  static TextStyle get bodyLargeNormal => TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textPrimary);
  static TextStyle get largeNormal => TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textPrimary);
  static TextStyle get largeMedium => TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textPrimary);
  static TextStyle get extraLargeMedium => TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.textPrimary);
}

class AppButtonStyles {
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 0,
      minimumSize: const Size(73, 40),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle:
          AppTextStyles.bodyLargeNormal.copyWith(color: AppColors.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));
  static ButtonStyle textButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: AppColors.secondary,
      elevation: 0,
      foregroundColor: AppColors.primary,
      minimumSize: const Size(73, 40),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle: AppTextStyles.bodyLargeNormal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));
}
