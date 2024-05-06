import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingNavigationDot extends StatelessWidget {
  const OnBoardingNavigationDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: SlideEffect(
              activeDotColor: dark ? TColor.kLightColor : TColor.kDarkColor,
            ),
            controller: controller.pageController,
            onDotClicked: (index) => controller.dotNaviagtionClick(index),
            count: 3));
  }
}
