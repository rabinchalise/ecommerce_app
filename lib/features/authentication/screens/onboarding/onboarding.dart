import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/text_string.dart';
import 'widgets/onboarding_navigation_dot.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndicator(index),
            children: const [
              OnBoardingPage(
                imgurl: TImage.onBoardingImg1,
                title: TText.onBoardingTitle1,
                subTitle: TText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                  imgurl: TImage.onBoardingImg2,
                  title: TText.onBoardingTitle2,
                  subTitle: TText.onBoardingSubTitle2),
              OnBoardingPage(
                  imgurl: TImage.onBoardingImg3,
                  title: TText.onBoardingTitle3,
                  subTitle: TText.onBoardingSubTitle3)
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNavigationDot(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
