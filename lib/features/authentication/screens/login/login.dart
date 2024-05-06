import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/styles/spacing_styles.dart';

import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_string.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/cutom-icons/social_button.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingwithAppbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeader(),
              const LoginForm(),
              FormDivider(
                dividerText: TText.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
