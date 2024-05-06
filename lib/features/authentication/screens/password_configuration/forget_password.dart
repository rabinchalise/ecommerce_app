import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/controllers/forget-password/forget_password_controller.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_string.dart';
import 'package:shop/utils/validators/validation.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: TSizes.spaceBtwnItem,
            ),
            Text(TText.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwnSections * 2),
            Form(
              key: controller.forgetPasswordKey,
              child: TextFormField(
                controller: controller.email,
                validator: Tvalidator.validateEmail,
                decoration: const InputDecoration(
                    label: Text(TText.email),
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwnSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.sendPasswordResetEmail();
                  },
                  child: const Text(TText.submit)),
            )
          ],
        ),
      ),
    );
  }
}
