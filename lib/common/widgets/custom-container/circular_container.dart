import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.backgroundColor = TColor.kWhiteColor,
    this.radius = 400,
    this.child,
    this.margin,
    super.key,
  });
  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
