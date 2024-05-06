import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/brands/brand_card.dart';
import 'package:shop/common/widgets/products/grid_layout.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/features/shop/screens/brands/brand_products.dart';
import 'package:shop/utils/constants/sizes.dart';

class AllBrandsScreeen extends StatelessWidget {
  const AllBrandsScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: Text('Brands'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              const SectionHeading(
                text: 'Brand',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnItem,
              ),
              GridLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ]),
          ),
        ));
  }
}
