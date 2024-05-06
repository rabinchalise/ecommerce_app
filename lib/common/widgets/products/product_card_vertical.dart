import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/styles/shadow_styles.dart';
import 'package:shop/common/widgets/cutom-icons/circular_icon.dart';
import 'package:shop/common/widgets/products/product_price_text.dart';
import 'package:shop/common/widgets/products/product_title_text.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/common/widgets/custom-image/rounded_image.dart';
import 'package:shop/features/shop/controllers/product_controller.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/features/shop/screens/product-details/products_details.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/enums.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../brands/brand_title_with_verified_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key, required this.product});
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage =
        controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailsScreen(
            product: product,
          )),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: dark ? TColor.kDarkGreyColor : TColor.kWhiteColor,
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColor.kDarkColor : TColor.kLightColor,
              child: Stack(
                children: [
                  RoundedImage(
                    imgUrl: product.thumbnail,
                    applyImageRadius: true,
                    isNetworkImage: true,
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColor.kSecondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '$salePercentage%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColor.kBlackColor),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child:
                        CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItem / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: product.title,
                      smallSize: true,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwnItem / 2,
                    ),
                    BrandTitleWithVerifiedIcon(
                      title: product.brand!.name,
                    ),
                  ]),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      if (product.productType ==
                              ProductType.single.toString() &&
                          product.salePrice > 0)
                        Padding(
                          padding: const EdgeInsets.only(left: TSizes.sm),
                          child: Text(
                            product.price.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    decoration: TextDecoration.lineThrough),
                          ),
                        ),
                      //show sale price as main price if sale exist
                      Padding(
                        padding: const EdgeInsets.only(left: TSizes.sm),
                        child: ProductPriceText(
                          price: controller.getProductPrice(product),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        color: TColor.kDarkColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              TSizes.cardRadiusMd,
                            ),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius))),
                    child: const SizedBox(
                      height: TSizes.iconLg * 1.2,
                      width: TSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: TColor.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
