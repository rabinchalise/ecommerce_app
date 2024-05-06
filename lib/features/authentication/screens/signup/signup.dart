import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/form_divider.dart';
import 'package:shop/common/widgets/cutom-icons/social_button.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_string.dart';

import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TText.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwnSections),
              FormDivider(dividerText: TText.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwnSections),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
