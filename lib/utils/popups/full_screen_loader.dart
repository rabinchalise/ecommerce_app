import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../../common/widgets/loaders/animation_loader.dart';

class FullScreenLoader {
  static void openLoadingDailog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (context) {
          return PopScope(
              canPop: false,
              child: Container(
                color: THelperFunctions.isDarkMode(context)
                    ? TColor.kDarkColor
                    : TColor.kWhiteColor,
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 250),
                      AnimationLoader(text: text, animation: animation)
                    ],
                  ),
                ),
              ));
        });
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
