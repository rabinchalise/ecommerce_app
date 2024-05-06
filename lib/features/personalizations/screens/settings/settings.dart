import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/custom-container/primary_header_container.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/common/widgets/user-common-widget/setting_menu_tile.dart';
import 'package:shop/data/repositories/authentication/authentication_repository.dart';
import 'package:shop/data/repositories/product/product_repository.dart';
import 'package:shop/features/personalizations/screens/address/adress.dart';
import 'package:shop/features/shop/screens/cart/cart.dart';
import 'package:shop/features/shop/screens/orders/orders.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/dummy-data/dummy_data.dart';
import '../../../../common/widgets/user-common-widget/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductRepository());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: [
                CustomAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColor.kWhiteColor),
                  ),
                ),
                const UserProfileTile(),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
              ],
            )),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const SectionHeading(
                      text: 'Account Setting',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwnItem,
                    ),
                    SettingMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subTitle: 'Set Shoping delivery address',
                      onTap: () {
                        Get.to(() => const AddressScreen());
                      },
                    ),
                    SettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () {
                        Get.to(() => const CartScreen());
                      },
                    ),
                    SettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Order',
                      subTitle: 'In-progress and completed orders',
                      onTap: () {
                        Get.to(() => const OrderScreen());
                      },
                    ),
                    SettingMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account',
                      onTap: () {},
                    ),
                    SettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all discounted coupons',
                      onTap: () {},
                    ),
                    SettingMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of  notifications message',
                      onTap: () {},
                    ),
                    SettingMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwnSections,
                    ),
                    const SectionHeading(
                      text: 'App Setting',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwnSections,
                    ),
                    SettingMenuTile(
                        onTap: () =>
                            controller.uploadDummyData(DummyData.products),
                        icon: Iconsax.document_upload,
                        title: 'Load Data',
                        subTitle: 'Upload Data to your Cloud Firebase'),
                    SettingMenuTile(
                      icon: Iconsax.location,
                      title: 'GeoLocation',
                      subTitle: 'Set recommendation based on location',
                      traling: Switch(
                          activeColor: TColor.kSuccessColor,
                          value: true,
                          onChanged: (value) {}),
                    ),
                    SettingMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      traling: Switch(value: false, onChanged: (value) {}),
                    ),
                    SettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      traling: Switch(value: false, onChanged: (value) {}),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwnSections,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {
                              AuthenticationRepository.instance.logout();
                            },
                            child: const Text('LogOut'))),
                    const SizedBox(
                      height: TSizes.spaceBtwnSections * 2.5,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
