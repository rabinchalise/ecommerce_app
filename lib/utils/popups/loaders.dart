import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class Loaders {
  static hideSnackBar(context) =>
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

  static customToast(context, {required message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: THelperFunctions.isDarkMode(context)
                  ? TColor.kDarkerGreyColor.withOpacity(0.9)
                  : TColor.kGreyColor.withOpacity(0.9)),
          child: Center(
              child: Text(
            message,
            style: Theme.of(context).textTheme.labelLarge,
          )),
        )));
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: TColor.kWhiteColor,
        backgroundColor: TColor.kPrimaryColor,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(10),
        icon: const Icon(
          Iconsax.check,
          color: TColor.kWhiteColor,
        ));
  }

  static warningSnackBar({
    required title,
    message = '',
  }) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: TColor.kWhiteColor,
        backgroundColor: Colors.orange,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: TColor.kWhiteColor,
        ));
  }

  static errorSnackBar({
    required title,
    message = '',
  }) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: TColor.kWhiteColor,
        backgroundColor: Colors.red.shade600,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: TColor.kWhiteColor,
        ));
  }
}
