import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/device/device_utility.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: Text(
            'Skip',
            style: TextStyle(color: dark ? TColor.kPrimaryColor : Colors.black),
          ),
        ));
  }
}
