import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_string.dart';
import 'package:shop/utils/validators/validation.dart';

import '../../../controllers/update_name_controller.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text('Change Name',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Use real name for easy Verifictaion. This name will appear on several pages.',
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwnSections),

            Form(
                key: controller.updateNameFormKey,
                child: Column(children: [
                  TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        Tvalidator.validateEmptyText('First Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        label: Text(TText.firstName),
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwnInputFields),
                  TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        Tvalidator.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        label: Text(TText.lastName),
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ])),
            const SizedBox(height: TSizes.spaceBtwnSections),

//save button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.updateName(),
                  child: const Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}
