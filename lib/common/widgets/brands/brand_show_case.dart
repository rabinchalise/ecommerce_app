import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom-container/rounded_container.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    required this.image,
    super.key,
  });
  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      bordercolor: TColor.kDarkGreyColor,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwnItem),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(
            height: TSizes.spaceBtwnItem,
          ),
          Row(
              children: image
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColor.kDarkerGreyColor
          : TColor.kLightColor,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    ),
  );
}
