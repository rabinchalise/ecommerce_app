import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom-container/rounded_container.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OrderMenuCard extends StatelessWidget {
  const OrderMenuCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColor.kDarkColor : TColor.kLightColor,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              const Icon(Iconsax.ship),
              const SizedBox(width: TSizes.spaceBtwnItem / 2),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: TColor.kPrimaryColor, fontWeightDelta: 1),
                    ),
                    Text(
                      '17 March 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_34,
                    size: TSizes.iconSm,
                  ))
            ]),
            const SizedBox(height: TSizes.spaceBtwnItem),
            Row(
              children: [
                Expanded(
                  child: Row(children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(width: TSizes.spaceBtwnItem / 2),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text(
                            '[#2456F]',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: TSizes.spaceBtwnItem / 2),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text(
                            '03 Feb 2025',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
