import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/utils/constants/sizes.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/helpers/helper_function.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.fit = BoxFit.cover,
    required this.imgUrl,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
  });
  final double width, height, padding;
  final BoxFit? fit;
  final String imgUrl;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (THelperFunctions.isDarkMode(context)
                  ? TColor.kBlackColor
                  : TColor.kWhiteColor),
          borderRadius: BorderRadius.circular(56)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(56),
        child: isNetworkImage
            ? CachedNetworkImage(
                imageUrl: imgUrl,
                fit: fit,
                color: overlayColor,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    const ShimmerEffect(height: 55, width: 55, radius: 55),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Image(image: AssetImage(imgUrl), fit: fit, color: overlayColor),
      ),
    );
  }
}
