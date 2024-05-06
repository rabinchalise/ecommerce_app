import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/cutom-icons/circular_icon.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? TColor.kWhiteColor
              : TColor.kDarkColor,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColor.kDarkerGreyColor
              : TColor.kGreyColor,
        ),
        const SizedBox(width: TSizes.spaceBtwnItem),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwnItem),
        const CircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: TColor.kWhiteColor,
            backgroundColor: TColor.kPrimaryColor),
      ],
    );
  }
}
