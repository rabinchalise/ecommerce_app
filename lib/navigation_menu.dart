import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/personalizations/screens/settings/settings.dart';
import 'package:shop/features/shop/screens/home/home.dart';
import 'package:shop/features/shop/screens/store/store.dart';
import 'package:shop/features/shop/screens/whishlist/whishlist.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NaviagtionController());
    return Scaffold(
      bottomNavigationBar: Obx(
        //obx is observer
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? TColor.kBlackColor : TColor.kWhiteColor,
          // surfaceTintColor: dark ? TColor.kBlackColor : TColor.kWhiteColor,
          indicatorColor: dark
              ? TColor.kWhiteColor.withOpacity(0.1)
              : TColor.kBlackColor.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NaviagtionController extends GetxController {
  final Rx<int> selectedIndex = 0.obs; // being observed

  final screens = [
    const HomeScreen(),
    const Store(),
    const Favoritescreen(),
    const SettingsScreen()
  ];
}
