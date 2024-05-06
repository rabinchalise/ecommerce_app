import 'package:flutter/material.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/utils/constants/sizes.dart';
import '../../../../common/widgets/products/sortable_producta.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
