import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/authentication/controllers/signup/sign_up_controller.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contoller = SignUpController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Obx(() => Checkbox(
                value: contoller.privacyPolicy.value,
                onChanged: (value) {
                  contoller.privacyPolicy.value =
                      !contoller.privacyPolicy.value;
                }))),
        const SizedBox(width: TSizes.spaceBtwnItem),
        Flexible(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${TText.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${TText.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColor.kWhiteColor : TColor.kPrimaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? TColor.kWhiteColor : TColor.kPrimaryColor,
                    )),
            TextSpan(
                text: 'and ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: TText.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColor.kWhiteColor : TColor.kPrimaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? TColor.kWhiteColor : TColor.kPrimaryColor,
                    )),
          ])),
        )
      ],
    );
  }
}
