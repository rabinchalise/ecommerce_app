import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect(
      {super.key,
      required this.height,
      required this.width,
      this.radius = 15,
      this.color});
  final double height;
  final double width;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color:
                color ?? (dark ? TColor.kDarkerGreyColor : TColor.kWhiteColor),
          )),
    );
  }
}
