import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/controllers/login/login_controller.dart';
import 'package:shop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:shop/features/authentication/screens/signup/signup.dart';
import 'package:shop/utils/validators/validation.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwnSections),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => Tvalidator.validateEmail(value),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  label: Text(TText.email)),
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields),
            Obx(
              () => TextFormField(
                  controller: controller.password,
                  validator: (value) => Tvalidator.validatePassword(value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outlined),
                    label: const Text(TText.password),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: controller.hidePassword.value
                            ? const Icon(Iconsax.eye_slash)
                            : const Icon(Iconsax.eye)),
                  )),
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields / 2),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                child: Row(children: [
                  Obx(
                    () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.value =
                              !controller.rememberMe.value;
                        }),
                  ),
                  const Flexible(
                      child: Text(
                    TText.rememberMe,
                    overflow: TextOverflow.ellipsis,
                  ))
                ]),
              ),
              Flexible(
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const ForgetPasswordScreen());
                    },
                    child: const Text(
                      TText.forgetPassword,
                      overflow: TextOverflow.ellipsis,
                    )),
              )
            ]),
            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text(TText.signIn))),
            const SizedBox(height: TSizes.spaceBtwnItem),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => const SignUpScreen());
                    },
                    child: const Text(TText.createAccount))),
          ],
        ),
      ),
    );
  }
}
