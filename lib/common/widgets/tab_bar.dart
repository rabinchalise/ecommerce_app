import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';
import '../../utils/device/device_utility.dart';
import '../../utils/helpers/helper_function.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColor.kBlackColor : TColor.kWhiteColor,
      child: TabBar(
          isScrollable: true,
          indicatorColor: TColor.kPrimaryColor,
          unselectedLabelColor: TColor.kDarkGreyColor,
          labelColor: dark ? TColor.kWhiteColor : TColor.kPrimaryColor,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
