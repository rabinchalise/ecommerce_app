import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/shop/models/product_model.dart';

import '../../../utils/constants/sizes.dart';
import 'grid_layout.dart';
import 'product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higer Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwnSections,
        ),
        GridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => ProductCardVertical(
                  product: ProductsModel.empty(),
                ))
      ],
    );
  }
}
