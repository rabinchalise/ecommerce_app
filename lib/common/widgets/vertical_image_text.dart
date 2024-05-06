import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom-image/circular_image.dart';

import '../../utils/constants/color.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText(
      {super.key,
      required this.imgUrl,
      required this.title,
      this.textColor = TColor.kWhiteColor,
      this.backgroundColor,
      this.onTap,
      this.isNetworkImage = true});
  final String imgUrl, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwnItem),
        child: Column(
          children: [
            CircularImage(
              imgUrl: imgUrl,
              fit: BoxFit.fitWidth,
              padding: TSizes.sm * 1.4,
              isNetworkImage: isNetworkImage,
              overlayColor: dark ? TColor.kLightColor : TColor.kDarkColor,
            ),
            const SizedBox(height: TSizes.spaceBtwnItem / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
