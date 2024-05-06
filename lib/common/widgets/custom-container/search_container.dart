import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = false,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
    super.key,
  });

  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColor.kDarkColor
                    : TColor.kLightColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColor.kGreyColor) : null),
        child: Row(
          children: [
            Icon(icon,
                color: dark ? TColor.kDarkerGreyColor : TColor.kGreyColor),
            const SizedBox(
              width: TSizes.spaceBtwnItem,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
