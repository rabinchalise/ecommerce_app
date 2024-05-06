import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/loaders/vertical_shimmer.dart.dart';
import 'package:shop/common/widgets/products/product_card_vertical.dart';
import 'package:shop/features/shop/controllers/product_controller.dart';
import 'package:shop/features/shop/screens/all-products/all_products.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import '../../../../common/widgets/products/grid_layout.dart';
import '../../../../common/widgets/custom-container/search_container.dart';
import '../../../../common/widgets/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import '../../../../common/widgets/custom-container/primary_header_container.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwnSections),
                  SearchContainer(
                    text: 'Search the Products',
                  ),
                  SizedBox(height: TSizes.spaceBtwnSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          text: 'Products Categories',
                          showActionButton: false,
                          textColor: TColor.kWhiteColor,
                        ),
                        SizedBox(height: TSizes.spaceBtwnItem),
                        HomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwnSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwnSections),
                  SectionHeading(
                    text: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProductsScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwnItem),
                  Obx(() {
                    if (controller.isLoading.value) {
                      return const VerticalProductShimmer();
                    }

                    if (controller.featuredProducts.isEmpty) {
                      return Center(
                          child: Text(
                        'No Data Found!',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ));
                    }

                    return GridLayout(
                      itemCount: controller.featuredProducts.length,
                      itemBuilder: (_, index) => ProductCardVertical(
                          product: controller.featuredProducts[index]),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
