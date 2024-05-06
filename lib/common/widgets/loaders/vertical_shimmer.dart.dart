import 'package:flutter/material.dart';
import 'package:shop/common/widgets/products/grid_layout.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/utils/constants/sizes.dart';

class VerticalProductShimmer extends StatelessWidget {
  const VerticalProductShimmer({super.key, this.itemCount = 4});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => const SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerEffect(height: 180, width: 180),
            SizedBox(height: TSizes.spaceBtwnItem),
            ShimmerEffect(height: 15, width: 160),
            SizedBox(height: TSizes.spaceBtwnItem / 2),
            ShimmerEffect(height: 15, width: 110)
          ],
        ),
      ),
    );
  }
}
