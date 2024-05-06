import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class TAppBarThemme {
  TAppBarThemme._();
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      centerTitle: false,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: TColor.kBlackColor, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.0));
  static AppBarTheme darkAppBarTheme = const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      centerTitle: false,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: TColor.kWhiteColor, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0));
}
