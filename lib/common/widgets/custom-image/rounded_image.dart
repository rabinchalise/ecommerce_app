import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imgUrl,
    this.applyImageRadius = true,
    this.onPressed,
    this.border,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.padding,
    this.borderRadius = TSizes.md,
  });
  final double? width, height;
  final String imgUrl;
  final bool applyImageRadius;
  final VoidCallback? onPressed;
  final BoxBorder? border;
  final BoxFit? fit;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imgUrl)
                : AssetImage(imgUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
