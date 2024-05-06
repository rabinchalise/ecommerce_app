import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: TColor.kDarkGreyColor,
      suffixIconColor: TColor.kDarkGreyColor,

      // constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
      labelStyle:
          const TextStyle().copyWith(fontSize: 14, color: TColor.kBlackColor),
      hintStyle:
          const TextStyle().copyWith(fontSize: 14, color: TColor.kBlackColor),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle()
          .copyWith(color: TColor.kBlackColor.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kGreyColor)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
          borderSide: const BorderSide(width: 1, color: TColor.kGreyColor)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kDarkColor)),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kWarningColor)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2, color: TColor.kWarningColor)));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: TColor.kDarkGreyColor,
      suffixIconColor: TColor.kDarkGreyColor,

      // constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
      labelStyle:
          const TextStyle().copyWith(fontSize: 14, color: TColor.kWhiteColor),
      hintStyle:
          const TextStyle().copyWith(fontSize: 14, color: TColor.kWhiteColor),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle()
          .copyWith(color: TColor.kWhiteColor.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
          borderSide: const BorderSide(width: 1, color: TColor.kGreyColor)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kGreyColor)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kWhiteColor)),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: TColor.kWarningColor)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2, color: TColor.kWarningColor)));
}
