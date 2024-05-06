import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/products/grid_layout.dart';
import 'package:shop/common/widgets/products/product_card_vertical.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/features/shop/models/category_model.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/features/shop/screens/all-products/all_products.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const BrandShowCase(
                  image: [
                    TImage.productImage3,
                    TImage.productImage2,
                    TImage.productImage1
                  ],
                ),
                const BrandShowCase(
                  image: [
                    TImage.productImage3,
                    TImage.productImage2,
                    TImage.productImage1
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwnItem,
                ),
                SectionHeading(
                    text: 'You May like',
                    onPressed: () => Get.to(() => const AllProductsScreen())),
                const SizedBox(
                  height: TSizes.spaceBtwnItem,
                ),
                GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return ProductCardVertical(
                        product: ProductsModel.empty(),
                      );
                    }),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
              ],
            ),
          ),
        ]);
  }
}
