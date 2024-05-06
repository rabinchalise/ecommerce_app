import 'package:flutter/material.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/utils/constants/sizes.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key, this.itemCount = 6});
  final int itemCount;

  @override
  Widget build(Object context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
            const SizedBox(width: TSizes.spaceBtwnItem),
        itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ShimmerEffect(height: 55, width: 55, radius: 55),
              SizedBox(height: TSizes.spaceBtwnItem / 2),

              // text
              ShimmerEffect(height: 8, width: 55)
            ],
          );
        },
      ),
    );
  }
}
