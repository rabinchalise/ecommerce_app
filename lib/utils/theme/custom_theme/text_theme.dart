import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.bold, fontSize: 32.0, color: TColor.kDarkColor),
    headlineMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.w600, fontSize: 24.0, color: TColor.kDarkColor),
    headlineSmall: const TextStyle().copyWith(
        fontWeight: FontWeight.w600, fontSize: 18.0, color: TColor.kDarkColor),
    titleLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.w600, fontSize: 16.0, color: TColor.kDarkColor),
    titleMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.w500, fontSize: 16.0, color: TColor.kDarkColor),
    titleSmall: const TextStyle().copyWith(
        fontWeight: FontWeight.w400, fontSize: 16.0, color: TColor.kDarkColor),
    bodyLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.w500, fontSize: 14.0, color: TColor.kDarkColor),
    bodyMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        color: TColor.kDarkColor),
    bodySmall: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: TColor.kDarkColor.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        color: TColor.kDarkColor),
    labelMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        color: TColor.kDarkColor.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: TColor.kLightColor),
      headlineMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
          color: TColor.kLightColor),
      headlineSmall: const TextStyle().copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
          color: TColor.kLightColor),
      titleLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: TColor.kLightColor),
      titleMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: TColor.kLightColor),
      titleSmall: const TextStyle().copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: TColor.kLightColor),
      bodyLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          color: TColor.kLightColor),
      bodyMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
          color: TColor.kLightColor),
      bodySmall: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          color: TColor.kLightColor.withOpacity(0.5)),
      labelLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: TColor.kLightColor),
      labelMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: TColor.kLightColor.withOpacity(0.5)));
}
