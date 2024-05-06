import 'package:flutter/material.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/custom-image/rounded_image.dart';
import 'package:shop/common/widgets/products/product_card_horizontal.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/sizes.dart';

class SubCategoriesScrenn extends StatelessWidget {
  const SubCategoriesScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const RoundedImage(
                  imgUrl: TImage.banner3,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwnSections),
              Column(
                children: [
                  SectionHeading(text: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwnItem / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, __) => const SizedBox(
                              width: TSizes.spaceBtwnItem,
                            ),
                        itemBuilder: (context, index) =>
                            const ProductCardHorizontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
