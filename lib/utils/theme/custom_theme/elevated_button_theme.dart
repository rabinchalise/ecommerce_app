import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class TElevatedButtomTheme {
  TElevatedButtomTheme._();
  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: TColor.kPrimaryColor,
              foregroundColor: Colors.white,
              disabledBackgroundColor: Colors.grey,
              disabledForegroundColor: Colors.grey,
              side: const BorderSide(
                color: TColor.kPrimaryColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 18),
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))));

  static final ElevatedButtonThemeData darkElevatedbuttonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: TColor.kPrimaryColor,
              foregroundColor: Colors.white,
              disabledBackgroundColor: Colors.grey,
              disabledForegroundColor: Colors.grey,
              side: const BorderSide(
                color: TColor.kPrimaryColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 18),
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))));
}
