import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();
  static final OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.black,
              side: const BorderSide(color: TColor.kGreyColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)));

  static final OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.white,
              side: const BorderSide(color: TColor.kGreyColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)));
}
