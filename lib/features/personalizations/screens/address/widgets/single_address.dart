import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class SingleAdress extends StatelessWidget {
  const SingleAdress({super.key, required this.selectedAdress});
  final bool selectedAdress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAdress
          ? TColor.kPrimaryColor.withOpacity(0.5)
          : Colors.transparent,
      bordercolor: selectedAdress
          ? Colors.transparent
          : dark
              ? TColor.kDarkerGreyColor
              : TColor.kGreyColor,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwnItem),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              selectedAdress ? Iconsax.tick_circle5 : null,
              color: selectedAdress
                  ? dark
                      ? TColor.kLightColor
                      : TColor.kDarkColor
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text(
                '(+123) 456 9856',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text(
                '82356 Timmy Cloves, South laina, Maina, 87655, USA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
