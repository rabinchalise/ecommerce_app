import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/cutom-icons/circular_icon.dart';
import 'package:shop/common/widgets/products/grid_layout.dart';
import 'package:shop/common/widgets/products/product_card_vertical.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/features/shop/screens/home/home.dart';
import 'package:shop/utils/constants/sizes.dart';

class Favoritescreen extends StatelessWidget {
  const Favoritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'Whislist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return ProductCardVertical(
                      product: ProductsModel.empty(),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
