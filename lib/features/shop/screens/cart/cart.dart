import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/features/shop/screens/checkout/checkout.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'widgets/product_cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ProductCartItems(
          showAddRemoveButton: true,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const CheckoutScreen());
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
