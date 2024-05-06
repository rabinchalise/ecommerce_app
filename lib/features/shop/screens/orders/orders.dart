import 'package:flutter/material.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/features/shop/screens/orders/widgets/orders_list.dart';
import 'package:shop/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: OrderListItems()),
    );
  }
}
