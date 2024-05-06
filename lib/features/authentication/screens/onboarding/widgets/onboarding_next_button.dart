import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final black = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: black ? TColor.kPrimaryColor : Colors.black),
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          child: const Icon(Icons.arrow_forward)),
    );
  }
}
