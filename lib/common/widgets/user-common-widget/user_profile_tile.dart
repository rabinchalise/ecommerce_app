import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/personalizations/controllers/user_controllers.dart';
import 'package:shop/features/personalizations/screens/profile/profile.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/image_string.dart';
import '../custom-image/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: Obx(() {
        final networkImg = controller.user.value.profilePicture;
        final image = networkImg.isNotEmpty ? networkImg : TImage.user;
        return CircularImage(
          imgUrl: image,
          width: 50,
          height: 50,
          padding: 0,
          isNetworkImage: networkImg.isNotEmpty,
        );
      }),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColor.kWhiteColor),
      ),
      subtitle: Text(
        controller.user.value.email,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColor.kWhiteColor),
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(() => const ProfileScreen());
        },
        icon: const Icon(
          Iconsax.edit,
          color: TColor.kWhiteColor,
        ),
      ),
    );
  }
}
