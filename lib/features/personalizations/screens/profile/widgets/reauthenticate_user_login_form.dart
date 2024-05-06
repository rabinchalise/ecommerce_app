import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/personalizations/controllers/user_controllers.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_string.dart';
import 'package:shop/utils/validators/validation.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Re-AUthenticate User'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: Tvalidator.validateEmail,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      label: Text(TText.email)),
                ),
                const SizedBox(height: TSizes.spaceBtwnInputFields),
                Obx(
                  () => TextFormField(
                    controller: controller.verifyPassword,
                    validator: Tvalidator.validatePassword,
                    obscureText: controller.hidePassword.value,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        label: const Text(TText.password),
                        suffixIcon: IconButton(
                            onPressed: () {
                              controller.hidePassword.value =
                                  !controller.hidePassword.value;
                            },
                            icon: controller.hidePassword.value
                                ? const Icon(Iconsax.eye_slash)
                                : const Icon(Iconsax.eye))),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwnSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          controller.reAUthenticateEmailAndPasswordUser(),
                      child: const Text('Delete')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
