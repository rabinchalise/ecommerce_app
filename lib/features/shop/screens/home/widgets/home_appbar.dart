import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/features/personalizations/controllers/user_controllers.dart';
import 'package:shop/features/shop/screens/cart/cart.dart';
import '../../../../../common/widgets/appbar.dart';
import '../../../../../common/widgets/cutom-icons/cart_menu_icon.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/text_string.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColor.kGreyColor),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const ShimmerEffect(height: 40, width: 15);
            } else {
              return Text(
                controller.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColor.kWhiteColor),
              );
            }
          })
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: TColor.kTextWhiteColor,
          onPressed: () {
            Get.to(() => const CartScreen());
          },
        )
      ],
    );
  }
}
