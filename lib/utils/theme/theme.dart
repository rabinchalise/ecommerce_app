import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:shop/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:shop/utils/theme/custom_theme/check_box_theme.dart';
import 'package:shop/utils/theme/custom_theme/chip_theme.dart';
import 'package:shop/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:shop/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:shop/utils/theme/custom_theme/text_field_theme.dart';
import 'package:shop/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      disabledColor: TColor.kGreyColor,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: TColor.kPrimaryColor,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtomTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarThemme.lightAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      chipTheme: TChipTheme.lightChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
      scaffoldBackgroundColor: TColor.kWhiteColor);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      disabledColor: TColor.kGreyColor,
      brightness: Brightness.dark,
      primaryColor: TColor.kPrimaryColor,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtomTheme.darkElevatedbuttonTheme,
      appBarTheme: TAppBarThemme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      chipTheme: TChipTheme.darkChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
      scaffoldBackgroundColor: TColor.kBlackColor);
}
