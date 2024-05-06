import 'package:flutter/material.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'order_menu_card.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 6,
        separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwnItem,
            ),
        itemBuilder: (_, index) => const OrderMenuCard());
  }
}
