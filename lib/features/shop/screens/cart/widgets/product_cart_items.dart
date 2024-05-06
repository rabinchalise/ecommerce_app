import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';

class ProductCartItems extends StatelessWidget {
  const ProductCartItems({
    super.key,
    this.showAddRemoveButton = false,
  });
  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwnSections,
      ),
      itemCount: 4,
      itemBuilder: (_, index) {
        return Column(children: [
          const CartItem(),
          if (showAddRemoveButton)
            const SizedBox(
              height: TSizes.spaceBtwnItem,
            ),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            )
        ]);
      },
    );
  }
}
