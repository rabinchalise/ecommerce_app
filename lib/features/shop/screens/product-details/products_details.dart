import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/features/shop/screens/cart/cart.dart';
import 'package:shop/features/shop/screens/product-details/widgets/bottom_add_to_cart.dart';
import 'package:shop/features/shop/screens/product-details/widgets/product_attributes.dart';
import 'package:shop/features/shop/screens/product-details/widgets/product_meta_data.dart';
import 'package:shop/features/shop/screens/product-review/product_review.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_and_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.defaultSpace,
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwnSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const CartScreen());
                        },
                        child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwnSections),
                  const SectionHeading(
                    text: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwnItem),
                  const ReadMoreText(
                    'This is the Product description for Nike shoes.Nike shoes are iconic in the realm of athletic footwear, renowned for their innovation, performance, and style. Founded in 1964 by Bill Bowerman and Phil Knight, Nike has since become a global leader in sportswear and equipment, with its footwear line being particularly popular.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwnSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        text: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {
                            Get.to(() => const ProductReviewScreen());
                          },
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwnSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
