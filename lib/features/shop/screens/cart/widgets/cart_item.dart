import 'package:flutter/material.dart';
import '../../../../../common/widgets/brands/brand_title_with_verified_icon.dart';
import '../../../../../common/widgets/custom-image/rounded_image.dart';
import '../../../../../common/widgets/products/product_title_text.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imgUrl: TImage.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColor.kDarkerGreyColor
              : TColor.kLightColor,
        ),
        const SizedBox(
          width: TSizes.spaceBtwnItem,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: ProductTitleText(
                  title: 'Black Sports Shoes ',
                  maxlines: 1,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Uk 08 ',
                    style: Theme.of(context).textTheme.bodyLarge)
              ]))
            ],
          ),
        )
      ],
    );
  }
}
