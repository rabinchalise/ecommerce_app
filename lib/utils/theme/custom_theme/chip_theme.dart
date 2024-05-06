import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class TChipTheme {
  TChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColor.kGreyColor.withOpacity(0.4),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TColor.kWhiteColor,
    labelStyle: const TextStyle(color: TColor.kBlackColor),
    selectedColor: TColor.kPrimaryColor,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
      disabledColor: TColor.kDarkGreyColor,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      checkmarkColor: TColor.kWhiteColor,
      labelStyle: TextStyle(color: TColor.kWhiteColor),
      selectedColor: TColor.kPrimaryColor);
}
