import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/brands/brand_title_with_verified_icon.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/common/widgets/custom-image/rounded_image.dart';
import 'package:shop/common/widgets/products/product_price_text.dart';
import 'package:shop/common/widgets/products/product_title_text.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../cutom-icons/circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: dark ? TColor.kDarkGreyColor : TColor.kLightContainerColor,
            borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
        child: Row(
          children: [
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColor.kDarkColor : TColor.kWhiteColor,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedImage(
                      imgUrl: TImage.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColor.kSecondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColor.kBlackColor),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    child: CircularIcon(
                      height: 30,
                      width: 30,
                      size: 16,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(
                            title: 'Green Nike Half Sleeves Shirt',
                            smallSize: true),
                        SizedBox(height: TSizes.spaceBtwnItem / 2),
                        BrandTitleWithVerifiedIcon(title: 'Nike')
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: ProductPriceText(price: '236.8')),
                        Container(
                            decoration: const BoxDecoration(
                                color: TColor.kDarkColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      TSizes.cardRadiusMd,
                                    ),
                                    bottomRight: Radius.circular(
                                        TSizes.productImageRadius))),
                            child: const SizedBox(
                              height: TSizes.iconLg * 1.2,
                              width: TSizes.iconLg * 1.2,
                              child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: TColor.kWhiteColor,
                                ),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
