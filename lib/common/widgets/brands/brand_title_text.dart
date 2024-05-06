import 'package:flutter/material.dart';
import 'package:shop/utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText(
      {super.key,
      this.textColor,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandSizes = TextSizes.small});

  final Color? textColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandSizes;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : brandSizes == TextSizes.large
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: textColor)
                  : Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: textColor),
    );
  }
}
