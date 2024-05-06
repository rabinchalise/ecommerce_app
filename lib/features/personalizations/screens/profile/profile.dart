import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/custom-image/circular_image.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/features/personalizations/controllers/user_controllers.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/sizes.dart';

import 'widgets/change_name.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    Obx(() {
                      final networkImg = controller.user.value.profilePicture;
                      final image =
                          networkImg.isNotEmpty ? networkImg : TImage.user;
                      return controller.imageUploader.value
                          ? const ShimmerEffect(
                              height: 80,
                              width: 80,
                              radius: 80,
                            )
                          : CircularImage(
                              imgUrl: image,
                              width: 80,
                              height: 80,
                              isNetworkImage: networkImg.isNotEmpty,
                            );
                    })
                  ],
                ),
                TextButton(
                    onPressed: () {
                      controller.uploadUserProfilePicture();
                    },
                    child: const Text('Change Profile Pictures')),
                const SizedBox(height: TSizes.spaceBtwnItem / 2),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwnItem),
                const SectionHeading(
                  text: 'Profile Information',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwnItem),
                ProfileMenu(
                  onTap: () => Get.to(() => const ChangeName()),
                  title: 'name',
                  value: controller.user.value.fullName,
                ),
                ProfileMenu(
                    onTap: () {},
                    title: 'Username',
                    value: controller.user.value.userName),
                const SizedBox(height: TSizes.spaceBtwnItem),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwnItem),
                const SectionHeading(
                  text: 'Personal Information',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwnItem),
                ProfileMenu(
                  onTap: () {},
                  title: 'User ID',
                  value: controller.user.value.id,
                  icon: Iconsax.copy,
                ),
                ProfileMenu(
                  onTap: () {},
                  title: 'E-mail',
                  value: controller.user.value.email,
                ),
                ProfileMenu(
                    onTap: () {},
                    title: controller.user.value.phoneNumber,
                    value: '9825174945'),
                ProfileMenu(onTap: () {}, title: 'Gender', value: 'Male'),
                ProfileMenu(
                    onTap: () {},
                    title: 'Date of Birth',
                    value: '10 Dec, 1998'),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwnItem),
                Center(
                  child: TextButton(
                      onPressed: () => controller.deleteAccountWarningPopup(),
                      child: const Text(
                        'Close Account',
                        style: TextStyle(color: Colors.red),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
