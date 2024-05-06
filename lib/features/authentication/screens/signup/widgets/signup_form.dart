import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/controllers/signup/sign_up_controller.dart';
import 'package:shop/utils/validators/validation.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import 'terms_and_condition.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contoller = Get.put(SignUpController());
    return Form(
        key: contoller.signUpFormkey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: contoller.firstName,
                    validator: (value) =>
                        Tvalidator.validateEmptyText('First Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        label: Text(TText.firstName),
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwnInputFields),
                Expanded(
                  child: TextFormField(
                    controller: contoller.lastName,
                    validator: (value) =>
                        Tvalidator.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        label: Text(TText.lastName),
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields),
            TextFormField(
              controller: contoller.userName,
              validator: (value) =>
                  Tvalidator.validateEmptyText('Username', value),
              expands: false,
              decoration: const InputDecoration(
                  label: Text(TText.username),
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields),
            TextFormField(
              controller: contoller.email,
              validator: (value) => Tvalidator.validateEmail(value),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  label: Text(TText.email), prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields),
            Obx(
              () => TextFormField(
                controller: contoller.password,
                validator: (value) => Tvalidator.validatePassword(value),
                obscureText: contoller.hidePassword.value,
                decoration: InputDecoration(
                    label: const Text(TText.password),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                        onPressed: () => contoller.hidePassword.value =
                            !contoller.hidePassword.value,
                        icon: Icon(contoller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye))),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwnInputFields),
            TextFormField(
              controller: contoller.phoneNumber,
              validator: (value) => Tvalidator.validatePhoneNumber(value),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text(TText.phoneNo),
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwnSections),
            const TermsAndConditionCheckbox(),
            const SizedBox(height: TSizes.spaceBtwnSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    contoller.signUp();
                  },
                  child: const Text(TText.createAccount)),
            )
          ],
        ));
  }
}
