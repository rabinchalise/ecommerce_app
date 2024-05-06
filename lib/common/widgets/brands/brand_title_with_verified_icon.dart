import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/brands/brand_title_text.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColor.kPrimaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandSizes: brandTextSizes,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(
          Iconsax.verify5,
          size: TSizes.iconXs,
          color: TColor.kPrimaryColor,
        ),
      ],
    );
  }
}
