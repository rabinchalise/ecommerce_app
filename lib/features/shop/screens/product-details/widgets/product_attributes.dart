import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom-chip/custom_choice_chips.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/common/widgets/products/product_title_text.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/products/product_price_text.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColor.kDarkerGreyColor : TColor.kGreyColor,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    text: 'Variations',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwnItem,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwnItem,
                          ),
                          const ProductPriceText(
                            price: '20',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const ProductTitleText(
                title:
                    'This is the description of Products  and this goes up to max 4 lines ',
                maxlines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwnItem,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              text: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItem / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'Green',
                  selection: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Blue',
                  selection: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Yellow',
                  selection: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              text: 'Sizes',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnItem / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'EU 34',
                  selection: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 36',
                  selection: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 38',
                  selection: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
