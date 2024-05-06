import 'package:flutter/material.dart';
import 'package:shop/common/widgets/brands/brand_title_with_verified_icon.dart';
import 'package:shop/common/widgets/custom-image/circular_image.dart';
import 'package:shop/common/widgets/products/product_price_text.dart';
import 'package:shop/common/widgets/products/product_title_text.dart';
import 'package:shop/utils/constants/enums.dart';
import 'package:shop/utils/constants/image_string.dart';
import '../../../../../common/widgets/custom-container/rounded_container.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColor.kSecondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '75%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColor.kBlackColor),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwnItem),
            Text(
              '\$240',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwnItem),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwnItem / 1.5),
        const ProductTitleText(title: 'Blue Nike Shirt'),
        const SizedBox(height: TSizes.spaceBtwnItem / 1.5),
        Row(
          children: [
            const ProductTitleText(title: 'Status:'),
            const SizedBox(width: TSizes.spaceBtwnItem),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwnItem / 1.5),
        Row(
          children: [
            CircularImage(
              imgUrl: TImage.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColor.kWhiteColor : TColor.kBlackColor,
            ),
            const BrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
