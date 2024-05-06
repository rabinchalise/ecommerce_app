import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utils/helpers/helper_function.dart';

import '../../../utils/constants/color.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    this.iconColor,
    required this.onPressed,
    super.key,
  });
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_cart,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          top: 1,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: dark ? TColor.kWhiteColor : TColor.kBlackColor,
                borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: dark ? TColor.kBlackColor : TColor.kWhiteColor,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
