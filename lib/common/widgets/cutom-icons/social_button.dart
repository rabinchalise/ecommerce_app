import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/login/login_controller.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColor.kGreyColor),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {
              controller.googleSignIn();
            },
            icon: Image.asset(
              TImage.google,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwnItem),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColor.kGreyColor),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImage.facebook,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
