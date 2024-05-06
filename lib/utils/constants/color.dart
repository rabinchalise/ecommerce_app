import 'package:flutter/material.dart';

class TColor {
  TColor._();
  // basic colors
  static const kPrimaryColor = Color(0xFF4B68FF);
  static const kSecondaryColor = Color(0xFFFFE248);
  static const kAccentColor = Color(0xFFB0C7FF);

//text colors
  static const kTextPrimaryColor = Color(0xFF333333);
  static const kTextSecondaryColor = Color(0xFF6C757D);
  static const kTextWhiteColor = Colors.white;

//background colors
  static const kLightColor = Color(0xFFF6F6F6);
  static const kDarkColor = Color(0xFF272727);
  static const kPrimaryBackgroundColor = Color(0xFFF3F5FF);

//Background Container Colors
  static const kLightContainerColor = Color(0xFFF6F6F6);
  static final kDarkContainerColor = TColor.kWhiteColor.withOpacity(0.1);

// Buttons Colors
  static const kPrimaryButtonColor = Color(0xFF4B68FF);
  static const kSecondaryButtonColor = Color(0xFF6C757D);
  static const kButtonDisabledColor = Color(0xFFC4C4C4);

// borders Colors
  static const kBorderPrimaryColor = Color(0xFFD9D9D9);
  static const kBorderSecondaryColor = Color(0xFFE6E6E6);

//Error and Validations Colors
  static const kSuccessColor = Color(0xFF388E3C);
  static const kErrorColor = Color(0xFFD32F2F);
  static const kWarningColor = Color(0xFFF57C00);
  static const kInfoColor = Color(0xFF1976D2);

//Netural Colors
  static const kBlackColor = Color(0xFF232323);
  static const kDarkerGreyColor = Color(0xFF4F4F4F);
  static const kDarkGreyColor = Color(0xFF939393);
  static const kGreyColor = Color(0xFFE0E0E0);
  static const kSoftGreyColor = Color(0xFFF4F4F4);
  static const kLightGreyColor = Color(0xFFF9F9F9);
  static const kWhiteColor = Color(0xFFFFFFFF);

// gradient colors
  static const klinearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFFFF9A9E),
        Color(0xFFFAD0C4),
        Color(0xFFFAD0C4),
      ]);
}
