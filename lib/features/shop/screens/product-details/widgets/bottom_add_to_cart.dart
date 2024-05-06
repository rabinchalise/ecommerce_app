import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/cutom-icons/circular_icon.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: TSizes.defaultSpace / 1.5,
        horizontal: TSizes.defaultSpace,
      ),
      decoration: BoxDecoration(
          color: dark ? TColor.kDarkerGreyColor : TColor.kLightColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiusLg),
              topRight: Radius.circular(TSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: TColor.kDarkGreyColor,
                color: TColor.kWhiteColor,
              ),
              const SizedBox(width: TSizes.spaceBtwnItem),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: TSizes.spaceBtwnItem),
              const CircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: TColor.kBlackColor,
                color: TColor.kWhiteColor,
              )
            ],
          ),
          Flexible(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: TColor.kDarkColor,
                  side: const BorderSide(color: TColor.kBlackColor)),
              onPressed: () {},
              child: const Text(
                'Add To Bag',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
